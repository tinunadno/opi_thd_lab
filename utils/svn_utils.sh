clear_func(){
  rm -rf src/*
  rm -rf src/.git
  rm -rf src/.svn
  rm -r src
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

  svn switch "^/branches/${br_to}" --force
  commit_func "$name" "$author" "$br_to" false

  svn update

  svn merge "^/branches/${br_from}" --accept theirs-full --non-interactive || {

  echo "Merge completed with potential conflicts, scanning..."

  conflicted_files=$(svn status | grep '^C' | awk '{print $2}')

  for file in $conflicted_files; do
      echo "Conflict in $file - removing local version and restoring from br_from"
      svn delete "$file" --force
      svn cat "^/branches/${br_from}/$file" > "$file"
      svn add "$file"
    done
  }

  svn add --force . --auto-props --parents --depth infinity -q

  svn resolve --accept theirs-full --recursive . --non-interactive

  svn commit --username "${author}" -m "${name}" --no-auth-cache --non-interactive
}

init_func(){
  svnadmin create repo
  svn mkdir file://$(pwd)/repo/trunk file://$(pwd)/repo/branches file://$(pwd)/repo/tags -m "Initial structure"
  svn checkout file://$(pwd)/repo/trunk src
  cd src
}