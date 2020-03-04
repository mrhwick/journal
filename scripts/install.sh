brew install jrnl

# Add the config
mkdir -p ~/.config/jrnl
cp config.yaml ~/.config/jrnl/jrnl.yaml

# substitute the default jrnl with the file from this repo
current=$(pwd)"/jrnl.text"
sed -i.bu "s|PLACEHOLDER|${current}|g" ~/.config/jrnl/jrnl.yaml
