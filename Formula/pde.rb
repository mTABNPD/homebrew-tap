class Pde < Formula
  desc "Internal mTAB developer CLI"
  homepage "https://github.com/mTABNPD/mtab-pde-cli"
  version "0.1.32"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/pde-v0.1.32/pde-darwin-aarch64.tar.gz"
  sha256 "10f9cb3f26d1312e10066c6b211ee07fbf8621f1af6f245647e8cd0aca51aa8b"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "pde"
  end

  test do
    assert_match "pde 0.1.32", shell_output("#{bin}/pde --version")
  end
end
