class Pde < Formula
  desc "Internal mTAB developer CLI"
  homepage "https://github.com/mTABNPD/mtab-pde-cli"
  version "0.1.31"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/pde-v0.1.31/pde-darwin-aarch64.tar.gz"
  sha256 "777796bb0ed3c58fc707afbe45ef69eac04b2f94e970ce482519da213ac83a0a"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "pde"
  end

  test do
    assert_match "pde 0.1.31", shell_output("#{bin}/pde --version")
  end
end
