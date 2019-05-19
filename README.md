# .git-hooks

Some git hooks using the magnificent [overcommit](https://github.com/sds/overcommit).

### Installation

Assuming you can install ruby gems without `sudo`

```
gem install overcommit
```

Then `cd` into your repo and run

```
overcommit --install
git submodule add https://github.com/jethrodaniel/.git-hooks
overcommit --sign
overcommit --sign prepare-commit-msg
```

### What it do

Each hook is accompanied by its required default settings in your `.overcommit.yml`

- [InsertBranchNumber](prepare_commit_msg/insert_branch_number.rb)

```
PrepareCommitMsg:
  InsertBranchNumber:
    description: 'Prepending number from branch name into commit subject'
    enabled: true

    # Remove this to _not_ fail when missing a number in the branch name
    on_warn: fail
```
