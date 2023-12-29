pre_=$PWD
cd /tmp
git clone https://github.com/yelircaasi/schwarzwald.nvim
cd schwarzwald.nvim
git -C . rev-parse HEAD
rm -rf .git
nix hash-path .
