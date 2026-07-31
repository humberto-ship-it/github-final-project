# Final Project Submission Guide

GitHub account: `humberto-ship-it`

## Part 1 — required repository

Create a **public** repository with this exact name:

`github-final-project`

Upload the five project files, then submit these URLs:

1. README:
   `https://github.com/humberto-ship-it/github-final-project/blob/main/README.md`
2. Apache 2.0 license:
   `https://github.com/humberto-ship-it/github-final-project/blob/main/LICENSE`
3. Code of Conduct:
   `https://github.com/humberto-ship-it/github-final-project/blob/main/CODE_OF_CONDUCT.md`
4. Contributing guide:
   `https://github.com/humberto-ship-it/github-final-project/blob/main/CONTRIBUTING.md`
5. Bash script:
   `https://github.com/humberto-ship-it/github-final-project/blob/main/simple-interest.sh`

Open each URL before submission. A URL returning 404 earns points with roughly
the same enthusiasm as a brick.

## Part 2 — perform inside the provided lab

Fork this exact repository:

`ibm-developer-skills-network/mcino-Introduction-to-Git-and-GitHub`

Do not reuse the Part 1 repository for Part 2.

### Evidence 1 — `forked-repo`

After forking, record the API response:

```bash
curl -s https://api.github.com/repos/humberto-ship-it/mcino-Introduction-to-Git-and-GitHub | tee forked-repo
```

Confirm that the output shows your repository and its upstream/fork details.

### Evidence 2 — `merge_branches`

Run the lab's typo correction steps. Capture the checkout and first merge:

```bash
git checkout main
git merge bug-fix-typo 2>&1 | tee merge_branches
```

The saved output must show that one file changed.

### Evidence 3 — `bug-fix-revert`

Follow the lab instructions to create and push `bug-fix-revert`, then open the
required pull request. Replace `PR_NUMBER` with the real number:

```bash
curl -s https://api.github.com/repos/ibm-developer-skills-network/mcino-Introduction-to-Git-and-GitHub/pulls/PR_NUMBER | tee bug-fix-revert
```

Check that the response identifies your fork as the pull request head
repository and that the pull request is valid.

### Evidence 4 — branch status

Record the Branches API response:

```bash
curl -s https://api.github.com/repos/humberto-ship-it/mcino-Introduction-to-Git-and-GitHub/branches | tee branch-status
```

Before submission, verify that the output visibly includes:

- `main`
- `bug-fix-typo`
- `bug-fix-revert`

## Screenshots

Capture screenshots only after the required files, branches, merge output, and
pull request are visible. Do not submit fabricated or manually edited terminal
outputs.
