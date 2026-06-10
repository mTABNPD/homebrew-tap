class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.2.25"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/v0.2.25/halo-darwin-aarch64.tar.gz"
  sha256 "5462f2f8caf89721aaace6ff974d911eb7cf16cf4e2622310738640354b5e3ae"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.2.25", shell_output("#{bin}/halo --version")
  end
end
