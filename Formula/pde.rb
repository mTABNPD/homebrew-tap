class Pde < Formula
  desc "Internal mTAB developer CLI"
  homepage "https://github.com/mTABNPD/mtab-pde-cli"
  version "0.1.29"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/pde-v0.1.29/pde-darwin-aarch64.tar.gz"
  sha256 "f63d628a314ab5cc32b71ecec7964431cdf24c57d29d1b0135fdd87973923e79"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "pde"
  end

  test do
    assert_match "pde 0.1.29", shell_output("#{bin}/pde --version")
  end
end
