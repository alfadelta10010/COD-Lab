### Git Tutorial: Basic and Advanced Steps

ok first listen 

*git --help tutorial * is all you need to understand enough of git to work with it..


#### Basic Steps for Non-Open Source Projects

1. **Clone the Repo**
   - Initialize git in the repository and clone it.

2. **Add Files and Commit Them**
   - Stage and commit your changes.

3. **Link to Remote Repo**
   - The cloned repo is already linked to the remote repo.

4. **Pull from Repo and Push**
   - Pull the latest changes and push your updates.

**Example Workflow:**

```bash
# Clone the repo
git clone <repo link>

# Add files to the staging area
git add <file name>

# Check the status of files
git status

# Commit the changes
git commit -m "<commit message>"

# Push the changes to the main branch
git push origin main
```

#### Basic Steps for Open Source Projects

1. **Fork and Clone the Repo**
   - Fork the repository on GitHub and clone your forked repo.

2. **Create a Branch, Make Changes, and Push**
   - Create a separate branch for your changes and push them to your forked repo.

3. **Create Different Branches for Every Change**
   - Use different branches for separate features or fixes.

**Example Workflow:**

```bash
# Create a new branch
git branch <branch name>

# Switch to the new branch
git switch <branch name>

# Add files to the staging area
git add <file name>

# Commit the changes
git commit -m "<commit message>"

# pull fetches changes made in remote repository and merges it with current branch
git pull 
# Push the new branch to the remote repository
git push --set-upstream origin <branch name>

```

now go to github repo and it should prompt you to compare the branch and open a pull request

### COMMANDS

#### Going Back to a Certain Commit

```bash
#to see commit history
git log 
git reset <commit hashid>
 ```

