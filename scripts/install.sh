brew install jrnl

# Add the config
mkdir -p ~/.config/jrnl
cp config.yaml ~/.config/jrnl/jrnl.yaml

# substitute the default jrnl with the file from this repo
currentjrnl=$(pwd)"/jrnl.text"
sed -i.bu "s|PLACEHOLDER|${currentjrnl}|g" ~/.config/jrnl/jrnl.yaml

# substitue the syncer repo with this repo
repo=$(pwd)
cp scripts/synccrontemplate scripts/cron
sed -i.bu "s|PLACEHOLDER|${repo}|g" scripts/cron
cp scripts/gitsyncertemplate.sh scripts/gitsyncer.sh
sed -i.bu "s|PLACEHOLDER|${repo}|g" scripts/gitsyncer.sh
crontab scripts/cron
