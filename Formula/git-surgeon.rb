class GitSurgeon < Formula
  desc "Non-interactive hunk-level git staging for AI agents"
  homepage "https://github.com/raine/git-surgeon"
  version "0.1.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.15/git-surgeon-darwin-arm64.tar.gz"
      sha256 "b123c0919abfa0e81205add250b2429e4f63225aae6e5972088d51271dfe6385"
    else
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.15/git-surgeon-darwin-amd64.tar.gz"
      sha256 "b1ae39f2927a001727e6355a9b9b85b5f1704aad71fb9eb91386c4345e9645f0"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.15/git-surgeon-linux-arm64.tar.gz"
      sha256 "a63173a52aa1470e97b2836913a2d7ca91a36fce485a5df4dfbafc41a3d00c92"
    else
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.15/git-surgeon-linux-amd64.tar.gz"
      sha256 "d3e0e69752e5793e5908c48341ce22346e12c44f8b0d049243a0464b3bffba77"
    end
  end

  def install
    bin.install "git-surgeon"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/git-surgeon --version")
  end
end
