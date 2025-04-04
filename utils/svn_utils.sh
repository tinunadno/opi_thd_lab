clear_func(){
  rm -rf src/*
  rm -rf src/.git
  rm -rf src/.svn
  rm -r src
}

svn_merge_resolver() {
  local COMMIT_MESSAGE=$1
  local USERNAME=$2

  conflict_files=$(svn status | grep '^C' | awk '{print $2}')

  if [ -z "$conflict_files" ]; then
    svn commit -m "$COMMIT_MESSAGE" --username "$USERNAME"
    return 0
  fi

  for file in $conflict_files; do
    svn resolve --accept theirs-full "$file"
  done

  if svn status | grep -q '^[ADM]'; then
    svn commit -m "$COMMIT_MESSAGE" --username "$USERNAME"
  else
    echo "No changes to commit"
    return 1
  fi
}

commit_func(){
  local name=$1
  local number="${name//[^0-9]/}"
  local author=$2
  local br=$3
  local is_new_br=$4

  if [ "$is_new_br" == true ]; then
    svn copy ^/trunk ^/branches/"${br}" -m "Creating branch ${br}"
  fi

  svn switch ^/branches/"${br}"

  rm -rf *
  unzip -o ../../story/commit"${number}".zip -d ./
  svn add --force .
  svn commit --username "${author}" -m "$name"
}

merge_func(){
  local br_to=$1
  local br_from=$2
  local author=$3
  local name=$4

  svn switch "^/branches/${br_to}" --force
  commit_func name, author, br_to, false
  svn update

  svn merge "^/branches/${br_from}" --accept theirs-full --non-interactive

  svn resolve --accept theirs-full --recursive . --non-interactive

  svn add --force . --auto-props --parents --depth infinity -q

  svn commit --username "${author}" -m "${name}" --no-auth-cache --non-interactive
}

init_func(){
  svnadmin create repo
  svn mkdir file://$(pwd)/repo/trunk file://$(pwd)/repo/branches file://$(pwd)/repo/tags -m "Initial structure"
  svn checkout file://$(pwd)/repo/trunk src
  cd src
}