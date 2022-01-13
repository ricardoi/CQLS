# Git Hub

Git is a version control platform that helps you to organize, collaborate and share your scripts. 
You can open a free account for [github](https://github.com/)

After opening the accout, just follow up the instructions for setting up you GitHub account: 
> You need to open your `terminal`

- ## Set your git user name
  ```bash
    git config --global user.name "<your_name_here>"
  ```
- ## Set your git e-mail 
  ```bash
  git config --global user.email "<your_email@email.com>"
  ```
 
## Where to install?
I'd like to create a local folder to clone repositories, but you don't need to create this direcotory.
```shell
mkdir local_git
cd local_git # to enter to this directory
git clone htpps://github.com/repository_to_clone # per example `https://github.com/ricardoi/cqls_osu/`
```
You can enter to this repository/directory and you can see your github files, and you can open your file with the terminal.
```shell
cd cqls_osu/git/
open -a 'RStudio' README.md # Mac Only
```

**After setting up your account, you can start using your git**
>Note: remember that you have your local git (_on your personal computer_) and your remote git (_on your GitHub website_).
1) If you change a document locally (in your computer), 
2) _Add your file_ to your github with `git add .` 
3) _Confirm that you saved the change_ with `git commit -m 'Yes, I want to commit my last change'`, and
4) _Upload your changes_ using `git push` to your _online git_.

> Note: There are new methods to create your `git password`, just go to  your github `settings`, then to `developer settings`, click on `Personal Access Tokens` and _generate_ a ***new token***. Save the token in a safe place.

-	## Checking status 
	```bash
	git init
	git status
	```

-	## Clonning repository
	```bash
	git clone http://github.io/user_name/repository_name
	```
-	## Adding files 
	```bash
	git add .
	```
-	## Commiting files in-line commenting
	```bash
	git commit -m 'first commit of files'
	```

- ## Execute
	```bash
	git push
	git pull
	```
	if problems persist, force
	```bash
	git push -f
	```

# One commit ahead
-   ## Commit the change using
    
    ```bash
    git commit -m "My message"
    ```
      
-   ## Stash it.
    Stashing acts as a stack, where you can push changes, and you pop them in reverse order.
    
    To stash, type  
    ```bash
    git stash
    ```
    Do the merge, and then pull the stash:
    ```bash
    git stash pop
    ```
-	## Discard the local changes
	Using  
	```bash
	git reset --hard
	```
	or  
	```bash
	git checkout -t -f remote/branch
	```
- ## Discard large files, if commited large files mistakenly
To remove at commiting
```bash 
git filter-branch --tree-filter 'rm -rf PATH_TO_FILE' HEAD
```
OR
To remove after committing it first 
```bash 
git filter-branch -f --index-filter 'git rm --cached --ignore-unmatch PATH_TO_FILE'
```
