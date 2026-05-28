class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.2.10"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/v0.2.10/halo-darwin-aarch64.tar.gz"
  sha256 "3636414f6df9d29312d14fd269672a5f5c232312ffbf3a61c5c183587f89a9c6"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.2.9", shell_output("#{bin}/halo --version")
  end
end
