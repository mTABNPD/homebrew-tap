class Pde < Formula
  desc "Internal mTAB developer CLI"
  homepage "https://github.com/mTABNPD/mtab-pde-cli"
  version "0.1.1"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/pde-v0.1.1/pde-darwin-aarch64.tar.gz"
  sha256 "d33fa0817e199ec87d67c512677e798a1a4564a0db34e4e08660e5d7d7015a73"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "pde"
  end

  test do
    assert_match "pde 0.1.1", shell_output("#{bin}/pde --version")
  end
end
