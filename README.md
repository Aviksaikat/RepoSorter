# 🌟 RepoSorter - A bash script to sort your Git Repositories 🌟

![](images/banner.png)

![RepoSorter](https://img.shields.io/badge/RepoSorter-v1.0-brightgreen) ![Bash](https://img.shields.io/badge/Bash-Script-blue)

## 💡 Introduction

Are you tired of manually sorting your Git repositories into different folders? Say no more! RepoSorter is here to help you sort all your Git repositories with just one command.

## 🚀 How to use RepoSorter

Using RepoSorter is as easy as pie! Simply pass the directory path containing your Git repositories as a command line argument:

## 📋 Table of Contents

- [Introduction](#introduction)
- [Prerequisites](#prerequisites)
- [Usage](#usage)
- [Examples](#examples)
- [Contribution](#contribution)

## 🔧 Functionality

- `RepoSorter` will scan the directory passed as an argument to find all the Git repositories.
- It will then check if the repository is hosted on `GitHub` or `GitLab`.
- If it's a `GitHub` repository, it will be moved to `~/Desktop/git_projects/github_repos`.
- If it's a `GitLab` repository, it will be moved to `~/Desktop/git_projects/gitlab_repos`.

## ✔️ Prerequisites

- Git must be installed on your system
- Bash must be installed on your system

## 🪮 Usage

1. Clone this repository to your local machine
2. Navigate to the cloned directory in your terminal
3. Make the `RepoSorter.sh` file executable by running the following command: `chmod +x RepoSorter.sh`
4. Run the script with the directory path as a command line argument, e.g. `./RepoSorter.sh ~/Desktop/git_directories`

## ✍️ Examples

```bash
./RepoSorter.sh ~/Desktop/git_projects/ ~/Desktop/git_projects/
./RepoSorter.sh <src-dir> <dest-dir>
```

## 🎉 Result

By the end of this script, all your Git repositories will be neatly sorted into the appropriate folders, saving you time and effort.

## 🌠 That's it!

With RepoSorter, you can now focus on coding instead of manually sorting your Git repositories. Give it a try and let us know what you think! 🚀💻

## 🪢 Contribution

I welcome any contributions to improve RepoSorter. If you have an idea or a bug to report, feel free to open an issue or a pull request.
