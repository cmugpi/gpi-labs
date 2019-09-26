#!/usr/bin/env bash


# cd into folder where the driver is located, or quit (defensive)
# http://stackoverflow.com/questions/3349105
cd "${0%/*}" || exit 1

echo Setting up romancelab...

rm -rf romancelab &> /dev/null
git init romancelab
cp driver/infidelity.md romancelab

pushd romancelab &> /dev/null

git checkout -b Charlie
git add infidelity.md
git commit -m 'Charlie Cheats on Taylor'
git branch Taylor

popd &> /dev/null


echo Done.
