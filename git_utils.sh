clear_func(){
  rm -rf src/*
  rm -rf src/.git
  rm -r src
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

  # merge br17 br11
  git merge "${br_from}" -m "merged ${br_from} to ${br_to}"
  ../conflict_resolver.sh ../story/commit"${number}".zip "${name}" "${author} <${author}@poop.us>"
}

init_func(){
  git init
  git config user.name "red"
  git config user.email "red@poop.us"

  unzip -o ../story/commit0.zip -d ./
  git add .
  git commit --allow-empty -m "r0"
}