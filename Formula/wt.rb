# typed: false
# frozen_string_literal: true

class Wt < Formula
  desc "Git worktree manager with fzf integration and GitHub/GitLab support"
  homepage "https://github.com/AThevon/worktigre"
  url "https://github.com/AThevon/worktigre/archive/refs/tags/v2.2.0.tar.gz"
  sha256 "57c27030be32ca8df4b2799a6fada4280bdbec076b7de5d152e94e51c419f683"
  license "MIT"

  depends_on "fzf"
  depends_on "gh"
  depends_on "glab"
  depends_on "gum"
  depends_on "jq"

  def install
    bin.install "wt.sh" => "wt-core"
    (prefix/"lib/worktigre").install Dir["lib/*.sh"]
    (prefix/"assets/worktigre").install Dir["assets/logo*.ansi"]
    zsh_completion.install "completions/wt.zsh" => "_wt"
  end

  def caveats
    <<~EOS
      To enable automatic directory changing, add to your .zshrc:

        eval "$(wt-core --shell-init)"

      Then restart your terminal or run: source ~/.zshrc
    EOS
  end

  test do
    assert_match "wt 2.2.0", shell_output("#{bin}/wt-core --version 2>&1")
  end
end
