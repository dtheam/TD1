default:
    just --list

hello:
    echo "Hello world"

create-git url_distant:
    git init
    git branch -M main
    touch README.md
    git add .
    -git commit -m "Initial commit"
    -git remote add origin {{url_distant}}
    git push -u origin main