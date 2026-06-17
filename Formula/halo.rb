class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.2.35"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/v0.2.35/halo-darwin-aarch64.tar.gz"
  sha256 "b87818b71cde314e244fc928de412bd80d95c212af30c38509fe341c339f9d52"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.2.31", shell_output("#{bin}/halo --version")
  end
end
