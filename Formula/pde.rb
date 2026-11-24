class Pde < Formula
  desc "Internal mTAB developer CLI"
  homepage "https://github.com/mTABNPD/mtab-pde-cli"
  version "0.1.36"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/pde-v0.1.36/pde-darwin-aarch64.tar.gz"
  sha256 "eefed9067104085227ad8321356461b904487e673fdef90d38645ac2f5d6242d"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "pde"
  end

  test do
    assert_match "pde 0.1.36", shell_output("#{bin}/pde --version")
  end
end
