clear_func(){
  rm -rf src/*
  rm -rf src/.git
  rm -rf src/.svn
  rm -r src
}

conflict_resolver_func(){
  local COMMIT_MESSAGE=$2
  local NAME=$3

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
  local number="${name//[^0-9]/}"

  ## вот тут магия должна происходить какая я не понимаю
}

init_func(){
  svnadmin create repo
  svn mkdir file://$(pwd)/repo/trunk file://$(pwd)/repo/branches file://$(pwd)/repo/tags -m "Initial structure"
  svn checkout file://$(pwd)/repo/trunk src
  cd src
}