class GitSurgeon < Formula
  desc "Non-interactive hunk-level git staging for AI agents"
  homepage "https://github.com/raine/git-surgeon"
  version "0.1.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.17/git-surgeon-darwin-arm64.tar.gz"
      sha256 "d8b6e08465ceb3aebc322d52da71afd93fe1b6628488e7059e08056e55b2b787"
    else
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.17/git-surgeon-darwin-amd64.tar.gz"
      sha256 "c514e05a3638e8fe69d3577719be1553645905a1713263498b1c381ceed1b2b7"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.17/git-surgeon-linux-arm64.tar.gz"
      sha256 "c0f902befcdd05b140fcd05360daeaa5fde3aed7d492ef4131676676fe7ca908"
    else
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.17/git-surgeon-linux-amd64.tar.gz"
      sha256 "7bd03670ec02fd6e9e8c62e4cb69d9f85e3cb2d92976d8bc3077547bdf307db6"
    end
  end

  def install
    bin.install "git-surgeon"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/git-surgeon --version")
  end
end
