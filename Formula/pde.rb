class Pde < Formula
  desc "Internal mTAB developer CLI"
  homepage "https://github.com/mTABNPD/mtab-pde-cli"
  version "0.1.4"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/pde-v0.1.4/pde-darwin-aarch64.tar.gz"
  sha256 "f1bbf0e72cd7477ed5100dd44412076f3a552ea4813c6e2606be61d5c162121d"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "pde"
  end

  test do
    assert_match "pde 0.1.4", shell_output("#{bin}/pde --version")
  end
end
