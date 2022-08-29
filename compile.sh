#!/bin/bash

cd ~/Documents/Site/hugo-obsidian;
rm -rf ~/Documents/Site/quartz/content/*;
rm -rf ~/Documents/Site/quartz/public/*;
~/Documents/Site/obsidian-export/target/debug/obsidian-export --frontmatter=always /Users/alessandro/my-obsidian-vault ~/Documents/Site/quartz/content;
go run ~/Documents/Site/hugo-obsidian -input=/Users/alessandro/Documents/Site/quartz/content -output=/Users/alessandro/Documents/Site/quartz/assets/indices -index -root=/Users/alessandro/Documents/Site/quartz;
(cd ~/Documents/Site/quartz && hugo --minify)