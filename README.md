# .git-hooks

[![Build Status](https://travis-ci.com/jethrodaniel/.git-hooks.svg?branch=master)](https://travis-ci.com/jethrodaniel/.git-hooks)

Some git hooks using the magnificent [overcommit](https://github.com/sds/overcommit).

### Installation

Assuming you can install ruby gems without `sudo`

```
curl https://raw.githubusercontent.com/jethrodaniel/.git-hooks/master/install.sh | bash
```

You should also add this to your global `gitignore`

```
.overcommit.yml
.git-hooks/
```

This may be `~/.gitignore`, or `~/.config/git/ignore`, depending on your configuration.


### What it do

Sets a couple of default overcommit hooks, and adds a few more.

For default settings see [.overcommit.yml.example](.overcommit.yml.example).

#### Hooks added

- commit-msg
  - [PreventTmpCommits](commit_msg/prevent_tmp_commits.rb)
