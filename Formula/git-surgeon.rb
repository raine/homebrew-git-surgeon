class GitSurgeon < Formula
  desc "Non-interactive hunk-level git staging for AI agents"
  homepage "https://github.com/raine/git-surgeon"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.2/git-surgeon-darwin-arm64.tar.gz"
      sha256 "d5a594fcdab2656ca1e38371ef0d08faf9c632c65286678f47166ebe8da472fc"
    else
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.2/git-surgeon-darwin-amd64.tar.gz"
      sha256 "82ab932b7dcf2bcfeadd6e1aec96c76614316154cb8cb933d23a64b5f04340af"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.2/git-surgeon-linux-arm64.tar.gz"
      sha256 "4791dddda3ffe71475a9ff94ab09c647976b225dbd406bdf6204ae619767a849"
    else
      url "https://github.com/raine/git-surgeon/releases/download/v0.1.2/git-surgeon-linux-amd64.tar.gz"
      sha256 "079258955f1d8a6526b8e74b7950783049717227c2fc98687f5dd8b15d2f6874"
    end
  end

  def install
    bin.install "git-surgeon"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/git-surgeon --version")
  end
end
