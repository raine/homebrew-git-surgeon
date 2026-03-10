class GitSurgeon < Formula
  desc "Non-interactive hunk-level git staging for AI agents"
  homepage "https://github.com/raine/git-surgeon"
  version "0.1.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.9/git-surgeon-darwin-arm64.tar.gz"
      sha256 "d02e69841122d2921f10c120d08a456171bac8ca54c1fa7fba5ac9df69958df0"
    else
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.9/git-surgeon-darwin-amd64.tar.gz"
      sha256 "ee9de13080f5b49d15fe4318f85629763bc25c3f1f462fd5ed9f84ba6dd38747"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.9/git-surgeon-linux-arm64.tar.gz"
      sha256 "7644edcf0416a85b855d81e365e68fe98a3aeb0289f7187821ff001c80646922"
    else
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.9/git-surgeon-linux-amd64.tar.gz"
      sha256 "29b036ce30290049278d2c2e5ed860435d410f593dc1b089e957bc9f123d68a9"
    end
  end

  def install
    bin.install "git-surgeon"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/git-surgeon --version")
  end
end
