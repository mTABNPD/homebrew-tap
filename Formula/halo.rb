class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.2.191"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/v0.2.191/halo-darwin-aarch64.tar.gz"
  sha256 "5b5c2278e1a3f5fcdf494bf851bcee4a12401765bceeb99754e5a212d4aeac77"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.2.191", shell_output("#{bin}/halo --version")
  end
end
