# journal

This repo provides easy install and sync utils for my [jrnl](https://jrnl.sh/) ([github page](https://github.com/jrnl-org/jrnl)) CLI journal

## Installation

```bash
# clone the repo
git clone git@github.com:mrhwick/journal.git

# run installer
cd journal
./scripts/install.sh
```

This installer script automatically:

1. adds the jrnl app using `brew install jrnl`
2. adds the jrnl config from `config.yaml` with the default journal set to the cloned repo's `jrnl.text` file.
3. adds a [crontab](https://github.com/mrhwick/journal/blob/master/scripts/synccrontemplate) for every 3 hours to run a [sync with github](https://github.com/mrhwick/journal/blob/master/scripts/gitsyncertemplate.sh) to distribute entries
4. prompts you for the encryption password for the journal and adds it to the keychain

The first time you use `jrnl` to interact with the journal, if your keychain is password-protected, you'll be prompted to unlock the keychain for `jrnl` to have access to the encryption password. The promp will look like the following, and you can select "Always Allow" to give `jrnl` permanent access to that keychain item.

![image](https://user-images.githubusercontent.com/865759/75916715-d7c4f980-5e26-11ea-9742-e2e0016b27d7.png)


## Usage

https://jrnl.sh/overview/
