class GitSurgeon < Formula
  desc "Non-interactive hunk-level git staging for AI agents"
  homepage "https://github.com/raine/git-surgeon"
  version "0.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.5/git-surgeon-darwin-arm64.tar.gz"
      sha256 "44ab1a53225aa47c6b2afea717fb0a1543ed3d84ff398546783f4494ddc143d4"
    else
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.5/git-surgeon-darwin-amd64.tar.gz"
      sha256 "2c61f3aae9c758c3fb265e8f1857860c20940a47849a98bece0791df0d46a36d"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.5/git-surgeon-linux-arm64.tar.gz"
      sha256 "b5099a0651c692c56e2f73b20ab2d05fd059555d312c6b3214f6330f7da2abf9"
    else
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.5/git-surgeon-linux-amd64.tar.gz"
      sha256 "cdd5a5a8a1ecf35093ad94f8c8e06c8ccc8f9c91df5846705db7703a1440872b"
    end
  end

  def install
    bin.install "git-surgeon"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/git-surgeon --version")
  end
end
