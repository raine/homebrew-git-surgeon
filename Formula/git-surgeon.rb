class GitSurgeon < Formula
  desc "Non-interactive hunk-level git staging for AI agents"
  homepage "https://github.com/raine/git-surgeon"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.4/git-surgeon-darwin-arm64.tar.gz"
      sha256 "23b4897e5bb11383e89ce4657121ff4a03d19053961fdabe8e592b780ca0c2d8"
    else
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.4/git-surgeon-darwin-amd64.tar.gz"
      sha256 "db0a30cd4cb41645b99f3b46daf0a0219965ad218127e938e5b7a924f426fa94"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.4/git-surgeon-linux-arm64.tar.gz"
      sha256 "d5358c6776fbc22c65fede54feeac4d1962ba23fdcd29688ffcc25ef4134d5a7"
    else
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.4/git-surgeon-linux-amd64.tar.gz"
      sha256 "4790d6fcacbe711f4fe36296d9608069052b680ba94bd0a3fade7e9df10a9b51"
    end
  end

  def install
    bin.install "git-surgeon"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/git-surgeon --version")
  end
end
