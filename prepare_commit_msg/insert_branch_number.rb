# frozen_string_literal: true

module Overcommit::Hook::PrepareCommitMsg
  # Prepends the commit template with `[#x]`, where `x` is the first group
  # of numbers in the branch name.
  #
  # Warns if the branch name doesn't contain a number.
  #
  class InsertBranchNumber < Base
    def run
      case commit_message_source
      when :commit, :template
      else
        return :pass # To avoid 'merge' and 'rebase'
      end

      return :warn, 'Missing number in branch!' if branch_number.nil?

      modify_commit_message do |old_contents|
         "[##{branch_number}]\n#{old_contents}"
      end

      :pass
    end

    def branch_number
      Overcommit::GitRepo.current_branch.scan(/\d+/).first
    end
  end
end
