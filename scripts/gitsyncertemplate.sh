cd PLACEHOLDER
export PATH="/opt/homebrew/bin/git-crypt:$PATH"

date
echo " syncing journal repo to github.."
git fetch origin
git switch journal
git pull origin journal
git add journal
git commit -m "Adding new journal data"
git push origin journal
echo "\n\n"
