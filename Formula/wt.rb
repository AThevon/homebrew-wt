# typed: false
# frozen_string_literal: true

class Wt < Formula
  desc "Git worktree manager with fzf integration and GitHub PR support"
  homepage "https://github.com/AThevon/wt"
  url "https://github.com/AThevon/wt/archive/refs/tags/v1.4.0.tar.gz"
  sha256 "0e27a7685b914f4001e11cd8420a1cecdd57882244dde8d38189a12a3676b413"
  license "MIT"

  depends_on "fzf"
  depends_on "gh"
  depends_on "jq"

  def install
    bin.install "wt.sh" => "wt-core"
  end

  def caveats
    <<~EOS
      To enable automatic directory changing, add to your .zshrc:

        eval "$(wt-core --shell-init)"

      Then restart your terminal or run: source ~/.zshrc
    EOS
  end

  test do
    assert_match "wt 1.4.0", shell_output("#{bin}/wt-core --version 2>&1")
  end
end
