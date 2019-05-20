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

### What it do

Sets a couple of default overcommit hooks, and adds a few more.

For default settings see [.overcommit.yml.example](.overcommit.yml.example).

#### Hooks added

- prepare-commit-msg
  - [InsertBranchNumber](prepare_commit_msg/insert_branch_number.rb)
