# frozen_string_literal: true

module Overcommit::Hook::CommitMsg
  # Prevents committing short `temp`-like commit messages.
  #
  # If the config `excludes_pattern` is given, any captures are removed first.
  #
  class PreventTmpCommits < Base
    TMP_SUBJECTS = %w[tmp temp].freeze
    def run
      return :pass if empty_message?


        return :fail, "Don't make `tmp` commits" if tmp_subject? || blank_subject?

      return :pass
    end

    def tmp_subject?
      TMP_SUBJECTS.include? non_matching_subject
    end

    def blank_subject?
      non_matching_subject.size.zero?
    end

    def non_matching_subject
      subject.gsub Regexp.new(config['excludes_pattern']), ''
    end

    def subject
      commit_message_lines.first.strip
    end
  end
end
