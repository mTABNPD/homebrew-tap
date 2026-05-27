class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.2.9"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/v0.2.9/halo-darwin-aarch64.tar.gz"
  sha256 "fa199c3bea4e5ddee2870f2b8e30c1847b985734dd6f17c44e163b2c2c2ed01f"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.2.7", shell_output("#{bin}/halo --version")
  end
end
