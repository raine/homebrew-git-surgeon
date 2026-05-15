class GitSurgeon < Formula
  desc "Non-interactive hunk-level git staging for AI agents"
  homepage "https://github.com/raine/git-surgeon"
  version "0.1.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.16/git-surgeon-darwin-arm64.tar.gz"
      sha256 "b415605866249bfbf3d078c7d7b2b298f0dcdc38180bd208c82143112fb0478e"
    else
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.16/git-surgeon-darwin-amd64.tar.gz"
      sha256 "79ca395c0478702b1782d7b4305d0eda795b128d7a10decc4f25ee626d0866fd"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.16/git-surgeon-linux-arm64.tar.gz"
      sha256 "112da3668e9c57860726320ed5e19a7c31aff26a56a64d8ce7863ab8736f1bb4"
    else
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.16/git-surgeon-linux-amd64.tar.gz"
      sha256 "292b58b53849c0339aef7bb4ae9dbd89f26632965e35fe413ce86c99d78c4085"
    end
  end

  def install
    bin.install "git-surgeon"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/git-surgeon --version")
  end
end
