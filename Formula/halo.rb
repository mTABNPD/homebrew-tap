class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.2.148"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/v0.2.148/halo-darwin-aarch64.tar.gz"
  sha256 "aea1a234af45358ee81d6ff2d619b7121cedeaf78ae53c35287cde675afca791"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.2.148", shell_output("#{bin}/halo --version")
  end
end
