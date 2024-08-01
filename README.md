# Web Components

Web Components in V that can be rendered into HTML, for use in MDBook and Zola Static sites.
The end goal is to easily and readably go from Markdown (using heroscript) to rendered web components.

For example:
```
## People

Below is a component that shows our team.

!!!webcomponents.people
title: 'Our Team'
description: 'The group of people we work with'

!!! webcomponents.person
name: 'John Doe'
description: 'A team member of our team' 

```

Will render into an html template that shows a team section with cards for each team member.

```bash
#rub example
~/code/github/freeflowuniverse/webcomponents/examples/webcomponents/components_overview.vsh
```

### to install follow instructions on crystallib



### alternative with manual git checkout & v install

requirements

- v installed
- ssh key loaded for access to github

```bash
mkdir -p ~/code/github/freeflowuniverse
cd ~/code/github/freeflowuniverse
git clone git@github.com:freeflowuniverse/webcomponents.git
cd webcomponents
# checkout a branch with most recent changes
# git checkout development 
bash install.sh

```

## manual

> todo: there is some content underneath manual, but we are in process to use hero to generate mdbook. Stay tuned.

## generating docs

**You can skip generating docs for now, this part is under development.**

```bash
#cd in this directory
cd ~/code/github/freeflowuniverse/webcomponents
bash doc.sh
```

## Install Hero

**You can skip installing hero for now, this part is under development.**

hero is our "hero" tool to execute heroscript, deal with git, ...

```bash
curl https://raw.githubusercontent.com/freeflowuniverse/webcomponents/development/scripts/hero_install.sh > /tmp/hero_install.sh
bash /tmp/hero_install.sh
```

requirements

- ssh key loaded for access to github

#### to compile

```bash
bash ~/code/github/freeflowuniverse/webcomponents/cli/hero/compile.sh
```

## test your code before checking in

**You can skip testing for now, this part is under development.**

```bash
cd ~/code/github/freeflowuniverse/webcomponents
bash test.sh
```

- use `v test flowrift/core/pathlib` to run tests of one module
