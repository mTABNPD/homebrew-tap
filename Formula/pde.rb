class Pde < Formula
  desc "Internal mTAB developer CLI"
  homepage "https://github.com/mTABNPD/mtab-pde-cli"
  version "0.1.25"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/pde-v0.1.25/pde-darwin-aarch64.tar.gz"
  sha256 "6207896ce15e3e1542eaa2fde2fcf75c6b04b8882086fbea81df5a0c79c7add9"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "pde"
  end

  test do
    assert_match "pde 0.1.25", shell_output("#{bin}/pde --version")
  end
end
