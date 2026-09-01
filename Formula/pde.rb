class Pde < Formula
  desc "Internal mTAB developer CLI"
  homepage "https://github.com/mTABNPD/mtab-pde-cli"
  version "0.1.30"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/pde-v0.1.30/pde-darwin-aarch64.tar.gz"
  sha256 "ecaa822d7e0d6f97036c9ae39917d17fbbd5370461035f7b92d5228afaef06cc"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "pde"
  end

  test do
    assert_match "pde 0.1.30", shell_output("#{bin}/pde --version")
  end
end
