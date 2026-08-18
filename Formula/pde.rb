class Pde < Formula
  desc "Internal mTAB developer CLI"
  homepage "https://github.com/mTABNPD/mtab-pde-cli"
  version "0.1.17"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/pde-v0.1.17/pde-darwin-aarch64.tar.gz"
  sha256 "b4f472ad4429d7bd9661f455ea05c54a39ffb163db53c8c858d07845d98ad649"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "pde"
  end

  test do
    assert_match "pde 0.1.17", shell_output("#{bin}/pde --version")
  end
end
