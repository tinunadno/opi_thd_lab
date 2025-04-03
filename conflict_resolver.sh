ZIP_FILE="$1"
COMMIT_MESSAGE="$2"
NAME="$3"


conflict_files=$(git diff --name-only --diff-filter=U)


if [ -z "$conflict_files" ]; then
    exit 0
fi


for file in $conflict_files; do
  unzip -o "$ZIP_FILE" "$file"
  git add "$file"
done

if git diff --cached --quiet; then
    echo "no files for commit"
    exit 1
fi

git commit --author="$NAME" -m "$COMMIT_MESSAGE"

