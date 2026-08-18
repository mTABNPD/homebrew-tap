class Pde < Formula
  desc "Internal mTAB developer CLI"
  homepage "https://github.com/mTABNPD/mtab-pde-cli"
  version "0.1.16"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/pde-v0.1.16/pde-darwin-aarch64.tar.gz"
  sha256 "44e7af69e9d802bd4952b8547e7dedb48bc43b668e90afe67f61c96f863d5af1"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "pde"
  end

  test do
    assert_match "pde 0.1.16", shell_output("#{bin}/pde --version")
  end
end
