#!/bin/bash
branch=master

echo "Copying files..."
cp ~/.zshrc ~/.tmux.conf ~/.spacemacs ./

echo "Committing and pushing changes..."
git pull origin $branch
git add .
current_date=$(date +"%Y-%m-%d %T")
git commit -m "Autocommit from $current_date"
git push origin $branch
echo "Done!"
