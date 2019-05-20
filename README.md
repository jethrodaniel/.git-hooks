# .git-hooks

Some git hooks using the magnificent [overcommit](https://github.com/sds/overcommit).

### Installation

Assuming you can install ruby gems without `sudo`

```
gem install overcommit
```

And assuming you don't mind overwriting an existing `.overcommit.yml`,
`cd` into your repo and run

```
overcommit --install
git clone https://github.com/jethrodaniel/.git-hooks
# Or add as a submodule
# git submodule add https://github.com/jethrodaniel/.git-hooks
cp .git-hooks/.overcommit.yml.example .overcommit.yml
overcommit --sign
overcommit --sign prepare-commit-msg
```

Or, if you just want to copy-pasta :spaghetti:

```
gem install overcommit \
  && overcommit --install \
  && git clone https://github.com/jethrodaniel/.git-hooks \
  && cp .git-hooks/.overcommit.yml.example .overcommit.yml \
  && overcommit --sign \
  && overcommit --sign prepare-commit-msg
```

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
