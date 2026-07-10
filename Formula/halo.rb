class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.2.77"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/v0.2.77/halo-darwin-aarch64.tar.gz"
  sha256 "f6f6dfff31621bc9cfc82175ab1103511ad2be44c56ae4cc9a0c16a45fd95041"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.2.77", shell_output("#{bin}/halo --version")
  end
end
