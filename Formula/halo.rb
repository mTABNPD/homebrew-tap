class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.2.18"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/v0.2.18/halo-darwin-aarch64.tar.gz"
  sha256 "d199af9e5f94eda5e6efb75a8781488edd07da6d4fa045180fcddf44d5603e4f"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.2.18", shell_output("#{bin}/halo --version")
  end
end
