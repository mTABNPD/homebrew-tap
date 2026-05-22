class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.2.1"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/v0.2.1/halo-darwin-aarch64.tar.gz"
  sha256 "2cd5d92b570a6f1cc23d8427bf3623171943028b9402b7587cee3c8c8a2553a0"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.2.1", shell_output("#{bin}/halo --version")
  end
end
