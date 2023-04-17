Overview
=
This repository contains config files and information for setting up Bash according to my preferences. This repository is based relative to the user's home directory.

Inclusions
=
 - [Oh-my-bash - (install instructs on GitHub)](https://github.com/ohmybash/oh-my-bash)
 - [fzf - (install via package manager)](https://github.com/junegunn/fzf)
 - [shellcheck - (install via package manager)](https://github.com/koalaman/shellcheck)
 - [tldr - (install via package manager)](https://github.com/tldr-pages/tldr)

Adding custom scripts to path
=
In order to invoke scripts from the command line, the .bashrc file first needs to know the directory in which these scripts are being held.

In your .bashrc file, include a line of the form:
```
PATH=$PATH:$HOME/<path_to_dir>/<relative_to>/<home_dir>
#e.g. our scripts are stored in ~/.bin
PATH=$PATH:$HOME/.bin
```
Then after the addition, reload the bashrc by calling:
```
source ~/.bashrc
OR
. ~/.bashrc
OR
#if the alias is enabled
src
```

Writing scripts
=
Bash scripts have to be prefaced with this line:
```
#!/bin/bash
OR
#!/usr/bin/env bash
```
This points to the bash program and gives the script an execution point. The latter is the most portable syntax.

#Running scripts
Before any script can be run, the file has to be made executable. That can be peformed with:
```
chmod +x <path_of_script>.sh
```
Then it should be runnable with:
```
./<path_of_script>.sh
```
If the script folder exists in the .bashrc file, then the name of the script will simply be evokable from the terminal but its name alone.

