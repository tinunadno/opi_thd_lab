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

  unzip -o ../story/commit"${number}".zip -d ./
  git add .
  git commit --allow-empty --author="${author} <${author}@poop.us>" -m "$name"
}