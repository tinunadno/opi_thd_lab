clear_func(){
  rm -rf src/*
  rm -rf src/.git
  rm -rf src/.svn
  rm -r src
}

conflict_resolver_func(){
  local ZIP_FILE=$1
  local COMMIT_MESSAGE=$2
  local NAME=$3

  conflict_files=$(git diff --name-only --diff-filter=U)

  if [ -z "$conflict_files" ]; then
      return 0
  fi

  for file in $conflict_files; do
    unzip -o "$ZIP_FILE" "$file"
    git add "$file"
  done

  if git diff --cached --quiet; then
      echo "no files for commit"
      return 1
  fi

  git commit --author="$NAME" -m "$COMMIT_MESSAGE"

}

commit_func(){
  local name=$1
  local number="${name//[^0-9]/}"
  local author=$2
  local br=$3
  local is_new_br=$4
  if [ "$is_new_br" == true ]; then
    git checkout -b "${br}"
  else
    git checkout "${br}"
  fi

  rm *
  unzip -o ../story/commit"${number}".zip -d ./
  git add .
  git commit --allow-empty --author="${author} <${author}@poop.us>" -m "$name"
}

merge_func(){
  local br_to=$1
  local br_from=$2
  local author=$3
  local name=$4
  local number="${name//[^0-9]/}"

  git checkout "${br_to}"

  git merge "${br_from}" -m "merged ${br_from} to ${br_to}"
  conflict_resolver_func "../story/commit""${number}"".zip" "${name}" "${author} <${author}@poop.us>"
}

init_func(){
  git init
  git config user.name "red"
  git config user.email "red@poop.us"
}

