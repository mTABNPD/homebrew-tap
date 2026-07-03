class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.2.65"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/v0.2.65/halo-darwin-aarch64.tar.gz"
  sha256 "0b28bf55e6ae74afdf468761d28145fc2d3f43f29b97c837a55e2c18ea9946de"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.2.65", shell_output("#{bin}/halo --version")
  end
end
