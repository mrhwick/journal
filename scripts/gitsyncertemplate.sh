cd PLACEHOLDER
export PATH="/usr/local/bin:$PATH"

date
echo " syncing journal repo to github.."
git pull origin master
git add journal
git commit -m "Adding new journal data"
git push origin master
echo "\n\n"
