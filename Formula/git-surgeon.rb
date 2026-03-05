class GitSurgeon < Formula
  desc "Non-interactive hunk-level git staging for AI agents"
  homepage "https://github.com/raine/git-surgeon"
  version "0.1.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.8/git-surgeon-darwin-arm64.tar.gz"
      sha256 "a45428426edec52cd2807e7595d0b6349c9b34ad1f2d8d4780c345fe61bdb4e2"
    else
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.8/git-surgeon-darwin-amd64.tar.gz"
      sha256 "ada068e4a2ab033796586a4b3eab30869de10b28013dae47b3a580c3ff5c5eb4"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.8/git-surgeon-linux-arm64.tar.gz"
      sha256 "9eb4966bd494bc32291e0217ab75cc4709e894f95b811826c3658e23eb8088e0"
    else
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.8/git-surgeon-linux-amd64.tar.gz"
      sha256 "edaad7de233bb1d5254b2616c2274466b83f5e2be8d77aa19b527ea54454af8e"
    end
  end

  def install
    bin.install "git-surgeon"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/git-surgeon --version")
  end
end
