class Pde < Formula
  desc "Internal mTAB developer CLI"
  homepage "https://github.com/mTABNPD/mtab-pde-cli"
  version "0.1.15"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/pde-v0.1.15/pde-darwin-aarch64.tar.gz"
  sha256 "a707c2bfdf6f03f0960aa23d37050fe24f3d1568e0ddba1100799ff569c30215"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "pde"
  end

  test do
    assert_match "pde 0.1.15", shell_output("#{bin}/pde --version")
  end
end
