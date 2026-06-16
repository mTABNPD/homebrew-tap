class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.2.31"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/v0.2.31/halo-darwin-aarch64.tar.gz"
  sha256 "b94a0923c8ebe51fd1c750eb9f5bb1eb517e709aa77a112a273b3cf18fe9e653"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.2.31", shell_output("#{bin}/halo --version")
  end
end
