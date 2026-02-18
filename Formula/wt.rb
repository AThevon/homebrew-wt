# typed: false
# frozen_string_literal: true

class Wt < Formula
  desc "Git worktree manager with fzf integration and GitHub PR support"
  homepage "https://github.com/AThevon/wt"
  url "https://github.com/AThevon/wt/archive/refs/tags/v1.8.0.tar.gz"
  sha256 "73a913f0a3bc1c5360988b751a59e78ec55699feb66f96ad2c2f96b3449a0da4"
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
    assert_match "wt 1.8.0", shell_output("#{bin}/wt-core --version 2>&1")
  end
end
