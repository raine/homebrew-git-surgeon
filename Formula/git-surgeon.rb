class GitSurgeon < Formula
  desc "Non-interactive hunk-level git staging for AI agents"
  homepage "https://github.com/raine/git-surgeon"
  version "0.1.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.13/git-surgeon-darwin-arm64.tar.gz"
      sha256 "118a0da60ade956aff386746c4fe5384212405697244c1c2e9f353c3b9c5422d"
    else
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.13/git-surgeon-darwin-amd64.tar.gz"
      sha256 "232135f7b62f20096010b3ebc0a2aabfb47a68a2e3d130ffba1a804e13009cb2"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.13/git-surgeon-linux-arm64.tar.gz"
      sha256 "de1f96416ec17aec638de3a04be904fbabc30ded80cfdd25659c070a683c6fd1"
    else
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.13/git-surgeon-linux-amd64.tar.gz"
      sha256 "e153e6bc02db92b5cd2761e80c5a36d76293f6839d9d219649675b3b689801f0"
    end
  end

  def install
    bin.install "git-surgeon"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/git-surgeon --version")
  end
end
