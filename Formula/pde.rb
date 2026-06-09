class Pde < Formula
  desc "Internal mTAB developer CLI"
  homepage "https://github.com/mTABNPD/mtab-pde-cli"
  version "0.1.5"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/pde-v0.1.5/pde-darwin-aarch64.tar.gz"
  sha256 "6992fd95faa24830ac45c3b84dbe2e7cfcaf3608bdc6f7ddbef228af913540be"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "pde"
  end

  test do
    assert_match "pde 0.1.5", shell_output("#{bin}/pde --version")
  end
end
