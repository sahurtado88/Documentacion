# Azure DEvops

Boards - track work
Pipelines - build and deploy
Repos - Cloud-based source control
Test plans- test apps

## Board

## Azure repo

This quick reference contains terms encountered when working with Azure Repos:
- Branch
Branches keep a history of commits and provide a way to isolate changes for a feature or a bug fix
from your master branch and other work. Committing changes to a branch doesn't affect other
branches. You can push and share branches with other people on your team without having to merge
the changes into master.
- Clone
Creates a complete local copy of an existing Git repo. Cloning a repo downloads all commits and
branches and sets up a relationship with the existing repo you cloned. Use this relationship to interact
with the existing repo, pushing and pulling changes to share code with your team.
- Commit
A commit is a group of changes saved to your local repository. You can share these changes to the
remote repository by pushing these changes.
- Fork
A fork is a complete copy of a repo - all files, commits, branches. The new fork acts as if someone
cloned the original and then pushes to a new, empty one. After forking, new files, folders, and
branches are not shared between repo unless a pull request carries them along.
- Pull
A pull updates the code in your local repository with the changes from other members of your team
that are in the remote repository. I.e. pulling their code into your repo.
- Pull Request
Pull requests let your team review code and give feedback on changes before being merged into the
master branch. Reviewers can step through the proposed changes, leave comments, and vote to
approve or reject the code.
- Push
Use a push to share changes in commits and branches. When you push, Git uploads the saved
commits in your checked branch to the remote repository. If the branch exists on the remote
repository, Git takes the commits and adds them to that branch on the remote repository. If that
branch doesn't exist, Git creates a new branch with the same commits as your local branch. 

