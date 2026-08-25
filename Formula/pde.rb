class Pde < Formula
  desc "Internal mTAB developer CLI"
  homepage "https://github.com/mTABNPD/mtab-pde-cli"
  version "0.1.24"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/pde-v0.1.24/pde-darwin-aarch64.tar.gz"
  sha256 "4c54f4158dc8679af78d15c9962d38de50043d779b382cc24dd2f693d7de6b96"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "pde"
  end

  test do
    assert_match "pde 0.1.24", shell_output("#{bin}/pde --version")
  end
end
