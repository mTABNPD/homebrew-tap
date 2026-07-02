class Pde < Formula
  desc "Internal mTAB developer CLI"
  homepage "https://github.com/mTABNPD/mtab-pde-cli"
  version "0.1.7"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/pde-v0.1.7/pde-darwin-aarch64.tar.gz"
  sha256 "e6374b6203eb5e494f19d7af956ba67194a98cd44541f9068ba8d69cc9bf3d7c"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "pde"
  end

  test do
    assert_match "pde 0.1.7", shell_output("#{bin}/pde --version")
  end
end
