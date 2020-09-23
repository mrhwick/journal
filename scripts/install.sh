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

# substitue the syncer repo with this repo
repo=$(pwd)
cp scripts/synccrontemplate scripts/cron
sed -i.bu "s|PLACEHOLDER|${repo}|g" scripts/cron
cp scripts/gitsyncertemplate.sh scripts/gitsyncer.sh
sed -i.bu "s|PLACEHOLDER|${repo}|g" scripts/gitsyncer.sh
crontab scripts/cron

git fetch origin
git switch -c journal
