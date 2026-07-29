class Pde < Formula
  desc "Internal mTAB developer CLI"
  homepage "https://github.com/mTABNPD/mtab-pde-cli"
  version "0.1.11"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/pde-v0.1.11/pde-darwin-aarch64.tar.gz"
  sha256 "c43aca30ffb0f0572c3f5ceafcdcb3f8cde0bd10a398c763be5665e22c8f4803"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "pde"
  end

  test do
    assert_match "pde 0.1.11", shell_output("#{bin}/pde --version")
  end
end
