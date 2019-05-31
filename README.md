# .git-hooks

[![Build Status](https://travis-ci.com/jethrodaniel/.git-hooks.svg?branch=master)](https://travis-ci.com/jethrodaniel/.git-hooks)

Some git hooks using the magnificent [overcommit](https://github.com/sds/overcommit).

### Installation

Assuming you can install ruby gems without `sudo`

```
gem install overcommit
```

And assuming you don't mind overwriting an existing `.overcommit.yml`,
`cd` into your repo, copy-pasta :spaghetti:, and run

```
gem install overcommit \
  && overcommit --install \
  && git clone https://github.com/jethrodaniel/.git-hooks \
  && cp .git-hooks/.overcommit.yml.example .overcommit.yml \
  && overcommit --sign \
  && overcommit --sign prepare-commit-msg \
  && overcommit --sign commit-msg
```

Of course, you can always skip the hooks by appending `--no-verify` to your `git` commands.

Or even

```
SKIP=TrailingWhitespace git ...
```

or

```
ONLY=TrailingWhitespace git ...
```

See [overcommit](https://github.com/sds/overcommit) for more details.

**Note**:

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

- prepare-commit-msg
  - [InsertBranchNumber](prepare_commit_msg/insert_branch_number.rb)
- commit-msg
  - [PreventTmpCommits](commit_msg/prevent_tmp_commits.rb)
