class Pde < Formula
  desc "Internal mTAB developer CLI"
  homepage "https://github.com/mTABNPD/mtab-pde-cli"
  version "0.1.9"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/pde-v0.1.9/pde-darwin-aarch64.tar.gz"
  sha256 "23bd158d3e799dfa02c479cab4cd08dad279d5cebdc5de7b4488d801f49670e9"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "pde"
  end

  test do
    assert_match "pde 0.1.9", shell_output("#{bin}/pde --version")
  end
end
