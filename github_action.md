# GitHUB ACTION

A workflow automation service by GitHub

## Key components

- Workflows
- Jobs
- Steps

![](./Images/githubaction.png)
![](./Images/workflows%2Cjobs%2Csteps.png)


Thus far, you learned how to run simple shell commands like echo "Something" via run: echo "Something".

First Workflow

```
name: First Workflow
on: workflow_dispatch
jobs:
  first-job:
    runs-on: ubuntu-latest
    steps:
      - name: Print greeting
        run: echo "hello"
      - name: Print goodbye
        run: echo "bye"
```



If you need to run multiple shell commands (or multi-line commands, e.g., for readability), you can easily do so by adding the pipe symbol (|) as a value after the run: key.

Like this:

```
run: |
    echo "First output"
    echo "Second output"
```
This will run both commands in one step.