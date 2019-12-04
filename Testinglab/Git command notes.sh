-- GIT command notes.


-- hOW TO CHECK GIT VERSION
git --VERSION

-- how to create Local git repository and how to initializing.
-- first of all create a directory like:- if you are in upuntu machine .
mkdir myrepo
-- then access to repository
cd myrepo
-- then initializing repository
git init
-- check the repository you were found .git directory
ll 
cd .git
ll 
-- it is done now.



-- configure remote git repository
-- first of all check your remote github account repository
-- you were found a url like:-https://github.com/Boutiqaat-services-Pvt-Ltd/test.git
-- add to remote repository into Local git
git remote add myorg https://github.com/Boutiqaat-services-Pvt-Ltd/test.git
git remote -V 
-- status done it is showing you like:- 
#myorg	https://github.com/Boutiqaat-services-Pvt-Ltd/test.git (fetch)
#myorg	https://github.com/Boutiqaat-services-Pvt-Ltd/test.git (push)

-- what is fetch and push.
-- Before we talk about the differences between these two commands, let's stress their similarities: both are used to download new data from a remote repository.

 git fetch really only downloads new data from a remote repository - but it doesn't integrate any of this new data into your working files. Fetch is great for getting a fresh view on all the things that happened in a remote repository.
Due to it's "harmless" nature, you can rest assured: fetch will never manipulate, destroy, or screw up anything. This means you can never fetch often enough.

git pull, in contrast, is used with a different goal in mind: to update your current HEAD branch with the latest changes from the remote server. This means that pull not only downloads new data; it also directly integrates it into your current working copy files. This has a couple of consequences:

    Since "git pull" tries to merge remote changes with your local ones, a so-called "merge conflict" can occur. Check out our in-depth tutorial on How to deal with merge conflicts for more information.
    Like for many other actions, it's highly recommended to start a "git pull" only with a clean working copy. This means that you should not have any uncommitted local changes before you pull. Use Git's Stash feature to save your local changes temporarily.
-- How to remove remote git repository.


git remote remove myorg
git remote -v 
  
  Adding a File to the Local Repository and Git Status 
  First of all create a file into git repository like:-


cd myrepo
cat > test.txt
git status
git add test.txt
git status
incase if you want all file add and removeing unstaging tag
git add .
git add --all

