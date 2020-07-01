# substitue the syncer repo with this repo
repo=$(pwd)
cp scripts/synccrontemplate scripts/cron
sed -i.bu "s|PLACEHOLDER|${repo}|g" scripts/cron
cp scripts/gitsyncertemplate.sh scripts/gitsyncer.sh
sed -i.bu "s|PLACEHOLDER|${repo}|g" scripts/gitsyncer.sh
crontab scripts/cron
