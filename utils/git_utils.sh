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
  local archive="../story/commit${number}.zip"

  if [ "$is_new_br" == true ]; then
    git checkout -b "${br}"
  else
    git checkout "${br}"
  fi

  find . -mindepth 1 \( ! -path "./.git/*" ! -name ".git" \) -delete

  if [ -s "$archive" ]; then
    unzip -o "$archive" -d ./
  fi

  git add .

  if git diff --name-only --diff-filter=U | grep -q .; then
    for file in $(git diff --name-only --diff-filter=U); do
      git checkout --theirs "$file"
      git add "$file"
    done
  fi

  git commit --allow-empty --author="${author} <${author}@poop.us>" -m "$name"
}

merge_func() {
  local br_to=$1
  local br_from=$2
  local author=$3
  local name=$4

  git checkout "$br_to" || return 1

  if git merge --no-commit "$br_from"; then
    git commit --author="${author} <${author}@poop.us>" -m "$name"
  else
    git diff --name-only --diff-filter=U | while read -r file; do
      git checkout --theirs "$file"
      git add "$file"
    done
    git commit --author="${author} <${author}@poop.us>" -m "$name"
  fi
}


init_func(){
  git init
  git config user.name "red"
  git config user.email "red@poop.us"
}

