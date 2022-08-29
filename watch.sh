#!/bin/bash

export GOPATH="/Users/$USER/go";
export GOROOT="$(/usr/local/bin/brew --prefix golang)/libexec";
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin";
cd ~/Documents/Site;
# nodemon -w /Users/alessandro/my-obsidian-vault -w ~/Documents/Site/quartz/assets/js -w ~/Documents/Site/quartz/assets/styles -w ~/Documents/Site/quartz/layouts -w ~/Documents/Site/quartz/config.toml -w ~/Documents/Site/quartz/data/config.yaml -x "~/Documents/Site/quartz/compile.sh" -e md/html/js/scss/xml