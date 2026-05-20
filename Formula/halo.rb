class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.1.1"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/v0.1.1/halo-darwin-aarch64.tar.gz"
  sha256 "14e9144b9b0045bd9c3f216ba687b14125372e2c11b9d099442567bb4d58062a"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.1.1", shell_output("#{bin}/halo --version")
  end
end
