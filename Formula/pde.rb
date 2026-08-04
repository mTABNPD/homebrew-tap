class Pde < Formula
  desc "Internal mTAB developer CLI"
  homepage "https://github.com/mTABNPD/mtab-pde-cli"
  version "0.1.14"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/pde-v0.1.14/pde-darwin-aarch64.tar.gz"
  sha256 "ccbdf8c45eeed955e29c8d0e472b2f5138c8a96b5553987bc2e0a2514a8f1320"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "pde"
  end

  test do
    assert_match "pde 0.1.14", shell_output("#{bin}/pde --version")
  end
end
