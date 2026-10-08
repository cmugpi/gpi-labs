#!/usr/bin/env bash

REPO_NAME="binsearch"
AUTHOR="Jake Bot <jezimmer@andrew.cmu.edu>"

# Helper colors
cnone="$(echo -ne '\033[0m')"
cwhiteb="$(echo -ne '\033[1;37m')"
cred="$(echo -ne '\033[0;31m')"
cgreen="$(echo -ne '\033[0;32m')"

# Detects whether we can add colors or not
# http://stackoverflow.com/a/911213
in_white() {
  [ -t 1 ] && echo -n "$cwhiteb"
  cat -
  [ -t 1 ] && echo -n "$cnone"
}
in_red() {
  [ -t 1 ] && echo -n "$cred"
  cat -
  [ -t 1 ] && echo -n "$cnone"
}
in_green() {
  [ -t 1 ] && echo -n "$cgreen"
  cat -
  [ -t 1 ] && echo -n "$cnone"
}


warn_no_relative_dir() {
  echo
  echo "You must run this script with a relative path." | in_red
  echo "Examples:"
  echo "    ./$0"
  echo "    ../$0"
  exit 1
}

# cd into folder where the script is located, or quit (defensive)
# http://stackoverflow.com/questions/3349105
cd "${0%/*}" || warn_no_relative_dir

echo "In: $(pwd)"
echo
echo "Reseting (or initializing) Git repo..." | in_white
echo

rm -rf "$REPO_NAME"

git init "$REPO_NAME" --initial-branch=master

cp driver/search.py "$REPO_NAME"
cp driver/README.md "$REPO_NAME"

pushd "$REPO_NAME" &> /dev/null

git commit --author="$AUTHOR" --allow-empty -m "Initial commit"
git add README.md
git commit --author="$AUTHOR" -m "Add documentation"
git add search.py
git commit --author="$AUTHOR" -m "Add binary search implementation"


git checkout -b jez-change-names

if [ "$(uname)" = "Darwin" ]; then
  sed -i.bak -e 's/[[:<:]]value[[:>:]]/needle/' search.py
else
  sed -i.bak -e 's/\bvalue\b/needle/' search.py
fi
git commit --author="$AUTHOR" -am "Rename 'value' -> 'needle'"

git checkout -


# Delete line 6 from search.py *in the repo*
sed -i.bak -e '6d' search.py
rm -f search.py.bak

# Change `None` to `-1`, and stage the change
{
  echo
  echo "Note that it outputs the *index* of the first match,"
  echo "or -1 if the element was not found."
} >> README.md
git add README.md

popd &> /dev/null


echo
echo "Done." | in_green

