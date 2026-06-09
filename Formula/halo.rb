class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.2.22"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/v0.2.22/halo-darwin-aarch64.tar.gz"
  sha256 "315b82f5d8c9b87aec046d8f662b31862c718e10946ab09930bcbb0bd61d43bd"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.2.22", shell_output("#{bin}/halo --version")
  end
end
