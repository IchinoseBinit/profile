echo "Enter your commit message"
read message


git add .
git commit -m "${message}"

if [ -n "$(git status --porcelain)" ];
then
    echo "No changes found"
else
    echo "Enter your preferred branch"
    read branch
    git status
    echo "Pushing data to remote server!!!"
    git push origin "${branch}"
fi

