class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.2.154"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/v0.2.154/halo-darwin-aarch64.tar.gz"
  sha256 "2b9d1537abb050b441f4fc816f28178ca969356ccb4e381c7d32e3d9991d8377"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.2.154", shell_output("#{bin}/halo --version")
  end
end
