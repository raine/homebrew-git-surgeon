class GitSurgeon < Formula
  desc "Non-interactive hunk-level git staging for AI agents"
  homepage "https://github.com/raine/git-surgeon"
  version "0.1.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.7/git-surgeon-darwin-arm64.tar.gz"
      sha256 "cfbf7ccb81ec719da742641f53c743d3222c0ed6787820b3e8a94d8849f3c6db"
    else
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.7/git-surgeon-darwin-amd64.tar.gz"
      sha256 "db9325144911bcf68c59f9cd9d6143ceea4c808f9da12f85275f86605dc2607b"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.7/git-surgeon-linux-arm64.tar.gz"
      sha256 "add3fd2cdb5cc4bf1a1a3c693a8e5ab2f8289cfcda3aea6348d0d916cdf829a4"
    else
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.7/git-surgeon-linux-amd64.tar.gz"
      sha256 "9fbcd88f6bf05dbfd6cd8239d88d0b22b91eefbce737490af870cd06dd3b2994"
    end
  end

  def install
    bin.install "git-surgeon"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/git-surgeon --version")
  end
end
