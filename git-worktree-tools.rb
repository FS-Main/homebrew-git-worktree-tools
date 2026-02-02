class GitWorktreeTools < Formula
  desc "Enhanced git worktree management with Claude Code integration"
  homepage "https://github.com/FS-Main/git-worktree-tools"
  url "https://github.com/FS-Main/git-worktree-tools/archive/v1.0.0.tar.gz"
  sha256 "e9124969a76b6642e646577e57039feca80ba1e4da9844e3f504ba6e309d532d"
  license "MIT"

  # No dependencies declared - these are shell scripts that use system tools
  # Users need: git, node.js, jq (optional)
  # See caveats for requirements

  def install
    bin.install "bin/copy-claude-config.sh"
    bin.install "bin/git-worktree-remove-clean"
    prefix.install "bin/worktree-helper.sh"
  end

  def caveats
    <<~EOS
      Requirements (must be installed separately):
        - git (required)
        - node.js (required for Claude config sync)
        - jq (optional, for advanced cleanup)

      To complete the installation, add this line to your ~/.bashrc or ~/.zshrc:

        source $(brew --prefix)/opt/git-worktree-tools/worktree-helper.sh

      Then restart your shell or run:
        source ~/.zshrc  # or source ~/.bashrc

      After setup, you can use:
        gwa <branch>     - Create a worktree
        gwr [branch]     - Remove a worktree
        gwl              - List all worktrees
        gwh              - Show help

      Note: If Homebrew installation fails due to Xcode requirements,
      use manual installation: https://github.com/FS-Main/git-worktree-tools#manual-installation
    EOS
  end

  test do
    system "bash", "-c", "source #{prefix}/worktree-helper.sh && type -t git-worktree-add"
  end
end
