class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.2.123"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/v0.2.123/halo-darwin-aarch64.tar.gz"
  sha256 "4546b4f5214f227734ce58ba2dc828a000cb184e3d8a2efe838d0807fc585b79"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.2.123", shell_output("#{bin}/halo --version")
  end
end
