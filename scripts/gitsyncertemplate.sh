cd PLACEHOLDER

date
echo " syncing journal repo to github.."
echo "\n"
git pull origin master
git add journal
git commit -m "Adding new journal data"
git push origin master
echo "\n\n"
