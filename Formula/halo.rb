class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.2.13"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/v0.2.13/halo-darwin-aarch64.tar.gz"
  sha256 "0a716be879d27a013d554603ff2a182ae812fc8743089a6098e3ff5216eadb50"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.2.11", shell_output("#{bin}/halo --version")
  end
end
