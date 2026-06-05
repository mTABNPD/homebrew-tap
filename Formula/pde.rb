class Pde < Formula
  desc "Internal mTAB developer CLI"
  homepage "https://github.com/mTABNPD/mtab-pde-cli"
  version "0.1.0"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/pde-v0.1.0/pde-darwin-aarch64.tar.gz"
  sha256 "04339d6616b7e232fd926761958c42e4378b67de2c5e06a8fb495c3d367295c8"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "pde"
  end

  test do
    assert_match "pde 0.1.0", shell_output("#{bin}/pde --version")
  end
end
