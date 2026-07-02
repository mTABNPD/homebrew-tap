class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.2.62"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/v0.2.62/halo-darwin-aarch64.tar.gz"
  sha256 "50ce64a568a1d8c23a96ec7fdfc7a5fcdbd997e435d2ef4e535a264fe550da29"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.2.62", shell_output("#{bin}/halo --version")
  end
end
