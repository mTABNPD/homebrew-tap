class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.2.11"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/v0.2.11/halo-darwin-aarch64.tar.gz"
  sha256 "eb1c4125873e6ce1661d556bda13be384c859225ffa0359481494a4f478e5f09"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.2.11", shell_output("#{bin}/halo --version")
  end
end
