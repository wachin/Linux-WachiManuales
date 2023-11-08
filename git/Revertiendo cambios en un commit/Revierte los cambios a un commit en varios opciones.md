# Undo Changes in Git: git checkout, git revert, & git reset

https://www.nobledesktop.com/learn/git/undo-changes

Learn how to undo local changes, specific commits, and last  commits in Git through this comprehensive guide. Master the commands and  steps to navigate your Git repo and keep your projects clean and  error-free.

## Key Insights

- Uncommitted local changes in Git can be undone by navigating  to the Git repo folder on your terminal, running git status to see the  affected files, and running the command 'git checkout filename.html',  which reverts the file to its state at the previous commit.
- A specific commit that has been pushed can be undone by  using the unique hash for the commit. The commit hash can be found in  the commit history on GitHub, Bitbucket, or by running 'git log  --oneline' on your terminal. The command 'git revert 2f5451f --no-edit'  will create a new commit that reverses the existing commit.
- The last commit that has not been pushed yet can be undone  by running 'git reset --soft HEAD~' on your terminal. This command  undoes the latest commit, keeps the changes in place, and reverts the  files back to the staging area.
- Local changes that have been committed but not yet pushed  can be undone by running 'git reset 2f5451f' or 'git reset --hard  2f5451f' on your terminal. While the 'git reset' command removes the  commits but keeps the changes as uncommitted, 'git reset --hard' undoes  the commits and discards the changes.
- Navigate the commands and steps to undo changes and commits  in Git with real-world projects through comprehensive courses. These  courses are offered by Noble Desktop and are taught by expert  instructors.
- Opportunities for further learning and skill development are  available through a variety of courses and bootcamps offered in areas  such as web development, Python, data science, and web design.

Sometimes you make a mistake and want to go back to a previous version. Here's how to rollback changes.

## Undoing Local Changes That Have Not Been Committed

If you have made changes that you don't like, and they **have not been committed** yet, do as follows:

1. In your terminal (Terminal, Git Bash, or Windows Command Prompt), navigate to the folder for your Git repo.

2. Run **git status** and you should see the affected file listed.

3. Run the following command, replacing 

   filename.html

    with your file path (which you could copy and paste from the git status command): 	

   - **git checkout filename.html**

4. That file has now been reverted to the way it was at the previous commit (before your changes).

## Undoing a Specific Commit (That Has Been Pushed)

If you have one specific commit you want to undo, you can revert it as follows:

1. In your terminal (Terminal, Git Bash, or Windows Command Prompt), navigate to the folder for your Git repo.

2. Run **git status** and make sure you have a clean working tree.

3. Each commit has a unique hash (which looks something like 

   2f5451f

   ). You need to find the hash for the commit you want to undo. Here are two places you can see the hash for commits: 	

   - In the commit history on the GitHub or Bitbucket or website.
   - In your terminal (Terminal, Git Bash, or Windows Command Prompt) run the command **git log --oneline**

4. Once you know the hash for the commit you want to undo, run the following command (replacing 

   2f5451f

    with your commit's hash): 	

   - **git revert 2f5451f --no-edit**
   - **NOTE:** The **--no-edit** option  prevents git from asking you to enter in a commit message. If you don't  add that option, you'll end up in the VIM text editor. To exit VIM,  press **:** to enter command mode, then **q** for quit, and finally hit **Return** (Mac) or **Enter** (Windows).

5. This will make a new commit that is the opposite of the existing  commit, reverting the file(s) to their previous state as if it was never  changed.

6. If working with a remote repo, you can now push those changes: 	

   - **git push**

## Undoing Your Last Commit (That Has Not Been Pushed)

If you made a mistake on your last commit and have not pushed yet,  you can undo it. For example, maybe you added some files and made a  commit, and then immediately realized you forgot something. You can undo  the commit, and then make a new (correct) commit. This will keep your  history cleaner.

1. In your terminal (Terminal, Git Bash, or Windows Command Prompt), navigate to the folder for your Git repo.
2. Run this command: 	
   - **git reset --soft HEAD~**
   - TIP: Add a number to the end to undo multiple commits. For  example, to undo the last 2 commits (assuming both have not been pushed)  run **git reset --soft HEAD~2**
   - NOTE: **git reset --soft HEAD~** is the same as **git reset --soft HEAD^** which you may see in Git documentation.
3. Your latest commit will now be undone. Your changes remain in  place, and the files go back to being staged (e.g. with git add) so you  can make any additional changes or add any missing files. You can then  make a new commit.

## Undoing Local Changes That Have Been Committed (But Not Pushed)

If you have made local commits that you don't like, and they **have not been pushed** yet you can reset things back to a previous good commit. It will be as if the bad commits never happened. Here's how:

1. In your terminal (Terminal, Git Bash, or Windows Command Prompt), navigate to the folder for your Git repo.

2. Run **git status** and make sure you have a clean working tree.

3. Each commit has a unique hash (which looks something like 

   2f5451f

   ).  You need to find the hash for the last good commit (the one you want to  revert back to). Here are two places you can see the hash for commits: 	

   - In the commit history on the GitHub or Bitbucket or website.
   - In your terminal (Terminal, Git Bash, or Windows Command Prompt) run the command **git log --oneline**

4. Once you know the hash for the last good commit (the one you want to revert back to), run the following command (replacing 

   2f5451f

    with your commit's hash): 	

   - **git reset 2f5451f**
   - **git reset --hard 2f5451f**
   - **NOTE:** If you do **git reset** the  commits will be removed, but the changes will appear as uncommitted,  giving you access to the code. This is the safest option, because maybe  you wanted some of that code and you can now make changes and new  commits that are good. Often though you'll want to undo the commits and  through away the code, which is what **git reset --hard** does.

## Grow Your Skills

We offer a full suite of coding courses for students of all levels.  Learn through real-world projects from expert instructors. Check out our  coding bootcamps and courses now:

- [NYC web development courses](https://www.nobledesktop.com/topics/web-development-courses-nyc)
- [NYC Python courses](https://www.nobledesktop.com/topics/python-classes-nyc)
- [NYC data science courses](https://www.nobledesktop.com/topics/data-science-training)
- [NYC web design courses](https://www.nobledesktop.com/topics/web-design-classes)

### Related Resources

- ​             [Pull From a Remote Repository: git pull & git fetch](https://www.nobledesktop.com/learn/git/pull-fetch)           
- ​             [Stage & Commit Files: git add, git commit, & git log](https://www.nobledesktop.com/learn/git/stage-commit-files)           
- ​             [Ignore Files with .gitignore](https://www.nobledesktop.com/learn/git/ignore-files)           

​        

​        



## How to Learn Git

Master Git with hands-on training. Git is a free, open-source version  control system that allows developers to track the changes they make to  code.

- [Full-Stack Web Development Certificate at Noble Desktop](https://www.nobledesktop.com/certificates/full-stack-development): live, instructor-led course available in NYC or live online
- [Find Web Development Classes Near You](https://www.nobledesktop.com/classes-near-me/all/web-development): Search & compare dozens of available courses in-person
- Attend a [web development class live online](https://www.nobledesktop.com/classes-near-me/live-online/web-development) (remote/virtual training) from anywhere
- Find & compare the [best online web development classes (on-demand)](https://www.nobledesktop.com/online-classes/web-development) from the top providers and platforms
- Train your staff with [corporate and onsite web development training](https://www.nobledesktop.com/corporate-training/web-development)