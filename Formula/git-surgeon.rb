class GitSurgeon < Formula
  desc "Non-interactive hunk-level git staging for AI agents"
  homepage "https://github.com/raine/git-surgeon"
  version "0.1.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.10/git-surgeon-darwin-arm64.tar.gz"
      sha256 "e7bb98ec865b7add2f064d21827515edae829c077ecc7e35324cb7d53255392d"
    else
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.10/git-surgeon-darwin-amd64.tar.gz"
      sha256 "36a4a19979ece92cd3007776ab8be26319a0dab72d31003891676e24dd527121"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.10/git-surgeon-linux-arm64.tar.gz"
      sha256 "bcb5f74b739c2c5ae759be06aa2cfc2b2a7b4010e2fd443bf99e7a6bca284260"
    else
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.10/git-surgeon-linux-amd64.tar.gz"
      sha256 "3bb5b3ce7f7989927bea90c5c667971380bb57c6e2c640cc2e1edee44b991ef8"
    end
  end

  def install
    bin.install "git-surgeon"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/git-surgeon --version")
  end
end
