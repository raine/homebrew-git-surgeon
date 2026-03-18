class GitSurgeon < Formula
  desc "Non-interactive hunk-level git staging for AI agents"
  homepage "https://github.com/raine/git-surgeon"
  version "0.1.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.12/git-surgeon-darwin-arm64.tar.gz"
      sha256 "555e98d57ecf2299a1c5b0bb211ad80a3c060793236526c6316aa9283722b63a"
    else
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.12/git-surgeon-darwin-amd64.tar.gz"
      sha256 "57adb5dd125d459fe2eb9b8f4a33b8616b6ecdfce7584fcc1ac2000477f0790d"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.12/git-surgeon-linux-arm64.tar.gz"
      sha256 "a47032d9d89d9bfba4e1f9aa9167c274b0f69be2b683186fe7a1c6b85b10c65e"
    else
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.12/git-surgeon-linux-amd64.tar.gz"
      sha256 "22dea7cca7fe9cde96e85b7c02c655001141061cd6407925717070184a4b33c3"
    end
  end

  def install
    bin.install "git-surgeon"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/git-surgeon --version")
  end
end
