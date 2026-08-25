class Pde < Formula
  desc "Internal mTAB developer CLI"
  homepage "https://github.com/mTABNPD/mtab-pde-cli"
  version "0.1.23"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/pde-v0.1.23/pde-darwin-aarch64.tar.gz"
  sha256 "5212049f4068e3b4e1e1f9d11dc1b0ce6cb92b9b06b573c57274c8730c4d7981"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "pde"
  end

  test do
    assert_match "pde 0.1.23", shell_output("#{bin}/pde --version")
  end
end
