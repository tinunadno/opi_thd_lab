clear_func(){
  rm -rf src/*
  rm -rf src/.svn
  rm -rf src/.git
  rm -rf src
}

conflict_resolver_func(){
  local ZIP_FILE=$1
  local COMMIT_MESSAGE=$2
  local NAME="$3"

  conflict_files=$(svn status | grep '^C' | awk '{print $2}')

  if [ -z "$conflict_files" ]; then
      echo "Нет конфликтов"
      return 0
  fi

  for file in $conflict_files; do
    unzip -o "$ZIP_FILE" "$file" -d ./
    svn resolve --accept=working "$file"
    svn add "$file" 2>/dev/null
  done

  svn commit --username "$(echo "$NAME" | cut -d' ' -f1)" -m "$COMMIT_MESSAGE"
}

commit_func(){
  local name=$1
  local number="${name//[^0-9]/}"
  local author=$2
  local br=$3
  local is_new_br=$4

  if [ "$is_new_br" == true ]; then

    svn copy ^/r0 ^/branches/"$br" -m "Создана ветка $br"
  fi

  svn switch ^/branches/"$br"

  rm -rf ./*
  unzip -o "../story/commit${number}.zip" -d ./
  svn add --force . 2>/dev/null
  # shellcheck disable=SC2046
  svn delete $(svn status | grep '^!' | awk '{print $2}') 2>/dev/null

  svn commit --username "$author" -m "$name"
}

merge_func(){
  local br_to=$1
  local br_from=$2
  local author=$3
  local name=$4
  local number="${name//[^0-9]/}"

  svn switch ^/branches/"$br_to"

  svn merge ^/branches/"$br_from" --accept=postpone

  conflict_resolver_func "../story/commit${number}.zip" "$name" "$author <${author}@poop.us>"
}

init_func(){
  svnadmin create .svn
  svn checkout "file://$(pwd)/.svn" .svn

  svn mkdir r0 branches tags -m "Структура репозитория"
  svn checkout "file://$(pwd)/.svn/br0" .

  unzip -o ../story/commit0.zip -d ./
  svn add --force .
  svn commit --username "red" -m "r0"
}