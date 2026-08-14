class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.2.88"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/v0.2.88/halo-darwin-aarch64.tar.gz"
  sha256 "1c7eac8b0c99dbdddd8f169285cfce0b7ccd07b7efbcdea9eb9b3f0e53ca399c"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.2.85", shell_output("#{bin}/halo --version")
  end
end
