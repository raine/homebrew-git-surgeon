class GitSurgeon < Formula
  desc "Non-interactive hunk-level git staging for AI agents"
  homepage "https://github.com/raine/git-surgeon"
  version "0.1.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.6/git-surgeon-darwin-arm64.tar.gz"
      sha256 "982d1a373bca822fc4a183dbc67f52858e4a0a51baa80b01e8321361c0c8bfe0"
    else
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.6/git-surgeon-darwin-amd64.tar.gz"
      sha256 "bbc44db6dba82a9b3212d7c5c0166a88fdbaee214c114a21634660a2dcf6e22a"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.6/git-surgeon-linux-arm64.tar.gz"
      sha256 "d7be4157f265430bd4ef8263b30ebf775a204ea6a82550232a2d9e7ef23779bc"
    else
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.6/git-surgeon-linux-amd64.tar.gz"
      sha256 "e1f28db9dfe4692dfb3c33b48d172369ac0369ba63cdea4db078dba0304e6ff8"
    end
  end

  def install
    bin.install "git-surgeon"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/git-surgeon --version")
  end
end
