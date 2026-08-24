class Pde < Formula
  desc "Internal mTAB developer CLI"
  homepage "https://github.com/mTABNPD/mtab-pde-cli"
  version "0.1.21"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/pde-v0.1.21/pde-darwin-aarch64.tar.gz"
  sha256 "bed69da7ab97078dc0678ed282a354d6b97ee7e2317fb4123a990eeb4a67ed22"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "pde"
  end

  test do
    assert_match "pde 0.1.21", shell_output("#{bin}/pde --version")
  end
end
