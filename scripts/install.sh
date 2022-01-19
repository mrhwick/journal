# install git-crypt and set it up
brew install git-crypt
if [ -e keyfile ]
then
    echo "keyfile found, setting up git-crypt"
else
    echo "keyfile not found, exiting.."
    exit 1
fi

git-crypt unlock keyfile

echo "[lfs \"extension.git-crypt\"]" >> .git/config
echo "	clean = git-crypt clean" >> .git/config
echo "	smudge = git-crypt smudge" >> .git/config
echo "	priority = 0" >> .git/config

# substitue the syncer repo with this repo
repo=$(pwd)
cp scripts/synccrontemplate scripts/cron
sed -i.bu "s|PLACEHOLDER|${repo}|g" scripts/cron
cp scripts/gitsyncertemplate.sh scripts/gitsyncer.sh
sed -i.bu "s|PLACEHOLDER|${repo}|g" scripts/gitsyncer.sh
crontab scripts/cron

git fetch origin

# Use for existing repo's
# git switch journal

# Use for new repo's
# git switch -c journal 
