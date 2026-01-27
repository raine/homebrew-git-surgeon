class GitSurgeon < Formula
  desc "Non-interactive hunk-level git staging for AI agents"
  homepage "https://github.com/raine/git-surgeon"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.1/git-surgeon-darwin-arm64.tar.gz"
      sha256 "9b049c02599600de789ba5c5f4a6c332824f8d33febe6a79c9e1ed646be819a0"
    else
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.1/git-surgeon-darwin-amd64.tar.gz"
      sha256 "f76f226bf4d661dbe26f66f1ed0ef29935ed65ae33d74027e3caa54e15427d0b"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.1/git-surgeon-linux-arm64.tar.gz"
      sha256 "f85a83a01c7b14446bd2cd1876aa9c2da1bd1e74c82e2728cac0c5f6ac59ad0b"
    else
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.1/git-surgeon-linux-amd64.tar.gz"
      sha256 "512cfe24f25e3517f0b5fceb9b18e2d4166d172e330606b8deb5d609e5055339"
    end
  end

  def install
    bin.install "git-surgeon"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/git-surgeon --version")
  end
end
