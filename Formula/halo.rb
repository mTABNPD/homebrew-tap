class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.2.63"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/v0.2.63/halo-darwin-aarch64.tar.gz"
  sha256 "7d6e781aa01d456e079ec6b67933e5af2dc752bd9c4fe99fd05b0f8e25d52fa0"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.2.63", shell_output("#{bin}/halo --version")
  end
end
