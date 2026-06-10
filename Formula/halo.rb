class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.2.24"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/v0.2.24/halo-darwin-aarch64.tar.gz"
  sha256 "28468eabe723437ce3384aaea13eb1b4404358738141f5d56e7d79fa4b3768bb"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.2.23", shell_output("#{bin}/halo --version")
  end
end
