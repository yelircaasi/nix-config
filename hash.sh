pre_=$PWD
cd /tmp
rm -rf tmpdir
git clone $1 tmpdir
cd tmpdir
git -C . rev-parse HEAD
rm -rf .git
nix hash path .
cd $pre_