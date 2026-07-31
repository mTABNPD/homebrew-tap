class Pde < Formula
  desc "Internal mTAB developer CLI"
  homepage "https://github.com/mTABNPD/mtab-pde-cli"
  version "0.1.12"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/pde-v0.1.12/pde-darwin-aarch64.tar.gz"
  sha256 "a4267d6c231c79ab05c7d7c156678f8855f123afe024dee4485652294f69eef8"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "pde"
  end

  test do
    assert_match "pde 0.1.12", shell_output("#{bin}/pde --version")
  end
end
