class GitSurgeon < Formula
  desc "Non-interactive hunk-level git staging for AI agents"
  homepage "https://github.com/raine/git-surgeon"
  version "0.1.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.11/git-surgeon-darwin-arm64.tar.gz"
      sha256 "a64ad60369f4ded15aa988b5c74ae2d0e94122f47608ee780874eb50e930760d"
    else
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.11/git-surgeon-darwin-amd64.tar.gz"
      sha256 "8ddb981a63e9427a8abc4cdcf597d3051ad2e2b4dc62ed03383c1921c83a0fad"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.11/git-surgeon-linux-arm64.tar.gz"
      sha256 "3de2bd4f089dd176db84ab853f154660e36b36b882a0ae28e05231db845c5336"
    else
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.11/git-surgeon-linux-amd64.tar.gz"
      sha256 "2ff1c3dab6aed445b51b432a55bc6c344377f97f7efc496cb0a7b372a1c24c20"
    end
  end

  def install
    bin.install "git-surgeon"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/git-surgeon --version")
  end
end
