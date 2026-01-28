class GitSurgeon < Formula
  desc "Non-interactive hunk-level git staging for AI agents"
  homepage "https://github.com/raine/git-surgeon"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.3/git-surgeon-darwin-arm64.tar.gz"
      sha256 "bacf93c682a472175cd9df95f70524afef5c9eec7c10e25044d88996c3793cd4"
    else
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.3/git-surgeon-darwin-amd64.tar.gz"
      sha256 "62cd77f8fd83037d85ee9a8c565318be23a31d90aa104b7c58fe66d702e5c5b7"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.3/git-surgeon-linux-arm64.tar.gz"
      sha256 "fae5c74be4d98827aff8417ddb653ddb89d71ba588326ada42bc20b5ebb1b0cf"
    else
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.3/git-surgeon-linux-amd64.tar.gz"
      sha256 "a63c4917b7e44fb4f5eac40154abe73daf43ff290bc8bab969e6b2f64b23fb31"
    end
  end

  def install
    bin.install "git-surgeon"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/git-surgeon --version")
  end
end
