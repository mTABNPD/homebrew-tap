class Pde < Formula
  desc "Internal mTAB developer CLI"
  homepage "https://github.com/mTABNPD/mtab-pde-cli"
  version "0.1.8"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/pde-v0.1.8/pde-darwin-aarch64.tar.gz"
  sha256 "1eb76deeadedf7e58b2a8bee3c2a88cc3e9456a4d3a64d9ee008045a68ed2700"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "pde"
  end

  test do
    assert_match "pde 0.1.8", shell_output("#{bin}/pde --version")
  end
end
