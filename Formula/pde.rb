class Pde < Formula
  desc "Internal mTAB developer CLI"
  homepage "https://github.com/mTABNPD/mtab-pde-cli"
  version "0.1.10"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/pde-v0.1.10/pde-darwin-aarch64.tar.gz"
  sha256 "cfb803325fe54c8253c7f91bc2edd61917c9695254cf85b2c1e387931a6e8231"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "pde"
  end

  test do
    assert_match "pde 0.1.10", shell_output("#{bin}/pde --version")
  end
end
