class Pde < Formula
  desc "Internal mTAB developer CLI"
  homepage "https://github.com/mTABNPD/mtab-pde-cli"
  version "0.0.0"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/pde-v0.0.0/pde-darwin-aarch64.tar.gz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "pde"
  end

  test do
    assert_match "pde 0.0.0", shell_output("#{bin}/pde --version")
  end
end
