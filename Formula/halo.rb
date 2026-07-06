class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.2.66"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/v0.2.66/halo-darwin-aarch64.tar.gz"
  sha256 "adc5833ade76dda41072fe6f226840321b6c9cd30ae8bdb6c2ee34b395f7ad54"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.2.66", shell_output("#{bin}/halo --version")
  end
end
