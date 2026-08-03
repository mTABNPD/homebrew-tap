class Pde < Formula
  desc "Internal mTAB developer CLI"
  homepage "https://github.com/mTABNPD/mtab-pde-cli"
  version "0.1.13"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/pde-v0.1.13/pde-darwin-aarch64.tar.gz"
  sha256 "4e6e5d8425250213ae4baae98ad164695d9fb84ae8dfd8fddd845118e56b3b15"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "pde"
  end

  test do
    assert_match "pde 0.1.13", shell_output("#{bin}/pde --version")
  end
end
