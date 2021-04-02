# .git-hooks

![](https://github.com/jethrodaniel/.git-hooks/workflows/build/badge.svg)
[![Build Status](https://travis-ci.com/jethrodaniel/.git-hooks.svg?branch=master)](https://travis-ci.com/jethrodaniel/.git-hooks)
![](https://img.shields.io/github/license/jethrodaniel/.git-hooks.svg)


Some git hooks using the magnificent [overcommit](https://github.com/sds/overcommit).

### Installation

Assuming you can install ruby gems without `sudo`

```
curl https://raw.githubusercontent.com/jethrodaniel/.git-hooks/master/install.sh | bash
```
You should also add these lines to your global `gitignore`

```
.overcommit.yml
.git-hooks/
```

That may be `~/.gitignore`, or `~/.config/git/ignore`, depending on your configuration.

Or (preferably) make this a git alias so you can rig this up to any repo:

```
git config --global alias.hooks '!sh -c "curl https://raw.githubusercontent.com/jethrodaniel/.git-hooks/master/install.sh | bash"'
```

Then just type `git hook` in your repo.

### What it do

Sets a couple of default overcommit hooks, and ~~adds a few more~~.

For default settings see [.overcommit.yml.example](.overcommit.yml.example).

#### Hooks added

- none at this time

#### Thanks

Big shoutout to [overcommit](https://github.com/sds/overcommit) for being a great (and well-maintained) gem.
