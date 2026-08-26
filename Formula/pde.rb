class Pde < Formula
  desc "Internal mTAB developer CLI"
  homepage "https://github.com/mTABNPD/mtab-pde-cli"
  version "0.1.26"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/pde-v0.1.26/pde-darwin-aarch64.tar.gz"
  sha256 "ab72cb62125905b8eb880126495ad51e2066ee62924c639a17841165fe6713fb"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "pde"
  end

  test do
    assert_match "pde 0.1.26", shell_output("#{bin}/pde --version")
  end
end
