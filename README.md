# Introduction
Download specific files and directories from a git repository.
# Installation
## Windows Git Bash and Linux
Append the content of gitsparse.sh to ~/.bashrc, then
```sh
source .bashrc
```
Due to the encoding issue of `echo`, do NOT use Powershell or CMD.
# Usage
```sh
gitsparse git_url file_1 [... file_n]
```
`file` (or directory) arguments should be relative position to base directory.
```sh
# Eg:
gitsparse https://github.com/eagleoflqj/gitsparse gitsparse.sh
```
