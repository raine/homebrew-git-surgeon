class GitSurgeon < Formula
  desc "Non-interactive hunk-level git staging for AI agents"
  homepage "https://github.com/raine/git-surgeon"
  version "0.1.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.14/git-surgeon-darwin-arm64.tar.gz"
      sha256 "45a1282218ca465fb16ac1e4117b84ff08dac2d9b3ad696f53e73c6a4a6d2d18"
    else
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.14/git-surgeon-darwin-amd64.tar.gz"
      sha256 "6de38b299a3301866adae364701e7aa86c147955d40af587956588df1c7b40b1"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.14/git-surgeon-linux-arm64.tar.gz"
      sha256 "16f28407edb88d1b38705b4462f7f4b878b8da0da0110d5aabf04b7db24ed049"
    else
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.14/git-surgeon-linux-amd64.tar.gz"
      sha256 "180a364c0083b0169a4eeb2dd44af6c1b9e7e6c58db1b379434523ab0c3f662b"
    end
  end

  def install
    bin.install "git-surgeon"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/git-surgeon --version")
  end
end
