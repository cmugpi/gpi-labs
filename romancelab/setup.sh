#!/usr/bin/env bash


# cd into folder where the driver is located, or quit (defensive)
# http://stackoverflow.com/questions/3349105
cd "${0%/*}" || exit 1

echo Setting up story-labs repo...

rm -rf story-labs &> /dev/null
git init story-labs
cp driver/infidelity.md story-labs

pushd story-labs &> /dev/null

git checkout -b Charlie
git add infidelity.md
git commit -m 'Charlie Cheats on Taylor'
git branch Taylor

popd &> /dev/null


echo Done.
