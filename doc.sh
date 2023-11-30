set -ex
# cd ~/code/github/freeflowuniverse/flowrift

rm -rf _docs
rm -rf docs

cd flowrift

v fmt -w .
v doc -m -f html . -readme -comments -no-timestamp -o ../

cd ..

mv _docs docs
open docs/index.html
