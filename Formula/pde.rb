class Pde < Formula
  desc "Internal mTAB developer CLI"
  homepage "https://github.com/mTABNPD/mtab-pde-cli"
  version "0.1.18"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/pde-v0.1.18/pde-darwin-aarch64.tar.gz"
  sha256 "30dc1f485516d1a143ec8f3bd0492348614e9af17993f281682cf898cb941b6a"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "pde"
  end

  test do
    assert_match "pde 0.1.18", shell_output("#{bin}/pde --version")
  end
end
