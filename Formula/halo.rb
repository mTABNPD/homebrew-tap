class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.2.145"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/v0.2.145/halo-darwin-aarch64.tar.gz"
  sha256 "5d2854d85616cf060b8d6bdb075bed8c2fd72295d7be9585b3d7dcd999ef3558"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.2.145", shell_output("#{bin}/halo --version")
  end
end
