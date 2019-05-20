# frozen_string_literal: true

module Overcommit::Hook::CommitMsg
  # Prevents committing if the commit message is `tmp` or `temp`.
  #
  # If the branch number has been added (like `[#x] subject`), then it will
  # be stripped before considering if the subject is `tmp`.
  #
  # Also fails if the commit subject only consists of the branch number
  #
  class PreventTmpCommits < Base
    TMP_SUBJECTS = %w[tmp temp].freeze
    BRANCH_NUM_REGEX = /\[#\d+\]/

    def run
      return :pass if empty_message?

      return :fail, "Don't make `tmp` commits" if tmp_subject? || blank_subject?

      return :pass
    end

    def tmp_subject?
      TMP_SUBJECTS.include? commit_message_lines.first.gsub(BRANCH_NUM_REGEX, '').strip
    end

    def blank_subject?
      commit_message_lines.first.gsub(BRANCH_NUM_REGEX, '').strip.size.zero?
    end
  end
end
