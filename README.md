# journal

This repo provides easy install and sync utils for my [obsidian](https://obsidian.md/) journal.

It uses crontab alongside [git-crypt](https://github.com/AGWA/git-crypt) to perform automatic syncing of journal state to this repository, encrypting the contents of the journal pages with a key. This repo could be adapted for other forks as needed by replacing the `/journal` directory with your own obsidian vault, replacing the key, and initializing git-crypt on the fork.

## Installation

```bash
# clone the repo
git clone git@github.com:mrhwick/journal.git

# run installer
cd journal
./scripts/install.sh
```

This installer script automatically:

1. adds the git-crypt tool using `brew install git-crypt`
2. Checks for a key file named `keyfile` and configures git-crypt encryption to use that key. This step will fail if the keyfile is not the key initially used to encrypt the contents of my journal.
3. adds a [crontab](https://github.com/mrhwick/journal/blob/master/scripts/synccrontemplate) for every 20 minutes to run a [sync with github](https://github.com/mrhwick/journal/blob/master/scripts/gitsyncertemplate.sh) to distribute changes in journal state or content.

## Usage

https://obsidian.md/
https://github.com/AGWA/git-crypt
