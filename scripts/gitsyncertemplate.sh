cd PLACEHOLDER

date
echo " syncing journal repo to github.."
echo "\n"
git pull origin master
git add jrnl.text
git commit -m "Adding new journal data"
git push origin master
echo "\n"
