class Pde < Formula
  desc "Internal mTAB developer CLI"
  homepage "https://github.com/mTABNPD/mtab-pde-cli"
  version "0.1.35"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/pde-v0.1.35/pde-darwin-aarch64.tar.gz"
  sha256 "73d6a7b917463fd50881c19e2e777a7503999a2d169742570fad85a80799a5f5"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "pde"
  end

  test do
    assert_match "pde 0.1.35", shell_output("#{bin}/pde --version")
  end
end
