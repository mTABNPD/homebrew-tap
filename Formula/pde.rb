class Pde < Formula
  desc "Internal mTAB developer CLI"
  homepage "https://github.com/mTABNPD/mtab-pde-cli"
  version "0.1.6"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/pde-v0.1.6/pde-darwin-aarch64.tar.gz"
  sha256 "f7f7b65541602274f5bed6899698be06dcd95fbd6503fb0e40a7fee50a2cd4e2"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "pde"
  end

  test do
    assert_match "pde 0.1.6", shell_output("#{bin}/pde --version")
  end
end
