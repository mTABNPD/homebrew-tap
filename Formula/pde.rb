class Pde < Formula
  desc "Internal mTAB developer CLI"
  homepage "https://github.com/mTABNPD/mtab-pde-cli"
  version "0.1.27"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/pde-v0.1.27/pde-darwin-aarch64.tar.gz"
  sha256 "85f5bdf1430124e8d774073e5428c732b740ab00f82774977e0ac885d98c37cb"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "pde"
  end

  test do
    assert_match "pde 0.1.27", shell_output("#{bin}/pde --version")
  end
end
