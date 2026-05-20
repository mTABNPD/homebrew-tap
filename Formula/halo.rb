class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.1.0"
  url "https://github.com/mTABNPD/halo-platform-cli/releases/download/v0.1.0/halo-darwin-aarch64.tar.gz"
  sha256 "2aa0005c8f10d0e25a8e973b3058300ced390a0b2e939eba01738fb1598eb069"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.1.0", shell_output("#{bin}/halo --version")
  end
end
