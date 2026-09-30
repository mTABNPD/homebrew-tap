class Pde < Formula
  desc "Internal mTAB developer CLI"
  homepage "https://github.com/mTABNPD/mtab-pde-cli"
  version "0.1.33"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/pde-v0.1.33/pde-darwin-aarch64.tar.gz"
  sha256 "6cf205a7bd102fcb49369a05bfec0286ee9059e6e7e4491bb9f2d483969b33de"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "pde"
  end

  test do
    assert_match "pde 0.1.33", shell_output("#{bin}/pde --version")
  end
end
