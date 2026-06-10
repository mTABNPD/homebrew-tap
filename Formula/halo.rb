class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.2.23"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/v0.2.23/halo-darwin-aarch64.tar.gz"
  sha256 "c0c4597eb783a651070005233f5458fb95acd89d2a43e8b44f8237cd6cbefbb7"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.2.23", shell_output("#{bin}/halo --version")
  end
end
