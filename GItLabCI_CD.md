# Gitlab CI CD

## Artifact
- An artifact is usually the output of a build tool
- In gitlab CI, artifacts are designed to save some compiled/generated part of the build
- Artifacts can be used to pass data between stages/jobs

## Caches

- Caches are not to be used to store build results
- Cache should only be used as a temporary storage for project dependencies

## Environments in Gitlab

- Environments allow you to control de continuos delivery/deploment process
- Easily track deployments
- You will know exactly what was deployed and on which environment
- You will have a full history of your deployments

## GITLAB VS GITHUB

GitHub|	GitLab|	Meaning|
|-|-|-|
Pull request|	Merge request|	Request to integrate a branch into the master
Gist|	Snippet|	Snippet of code
Repository	|Project|	Container that contains the repository, attachments, and project-specific settings
Organization	|Group|	Level at which users are assigned to projects

GitHub|	GitLab|
|-|-|
Issues can be tracked across multiple repositories	|Issues cannot be tracked in multiple repositories
Private repositories are paid	|Private repositories are free
No free hosting on a private server	|Free hosting on a private server
Continuous integration only via third-party tools such as Travis CI, CircleCI, etc.|	Free continuous integration functionality included
No built-in deployment platform	|Software deployment via Kubernetes
Comprehensive comment tracking|	No comment tracking
No ability to export issues as a CSV file|	Ability to export and email issues as a CSV file
Personal dashboard for tracking issues and pull requests|	Analysis dashboard for planning and monitoring projects

