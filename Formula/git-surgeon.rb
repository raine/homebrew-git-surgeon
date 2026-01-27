class GitSurgeon < Formula
  desc "Surgical git hunk control for AI agents"
  homepage "https://github.com/raine/git-surgeon"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.0/git-surgeon-darwin-arm64.tar.gz"
      sha256 "dd8f09d27efe6cb4dee61e7305438faf8741b4c6c2bb02f2e5d3169efbb34d81"
    else
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.0/git-surgeon-darwin-amd64.tar.gz"
      sha256 "f4db08a51552c5df04cce22e0f295d6bd67f5a5b12e00910e40e8b230595bae9"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.0/git-surgeon-linux-arm64.tar.gz"
      sha256 "83340c1f06f00f1f0e8cdb6e9770d7ea096e5d07800321163acf5a5be988d1c1"
    else
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.0/git-surgeon-linux-amd64.tar.gz"
      sha256 "cc4429c3a00d14623189443c7faa64183f9a1e7e6e2380cbcf7aeab8e8a702cb"
    end
  end

  def install
    bin.install "git-surgeon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-surgeon --version")
  end
end
