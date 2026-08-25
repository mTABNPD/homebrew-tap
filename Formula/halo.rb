class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.2.93"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/v0.2.93/halo-darwin-aarch64.tar.gz"
  sha256 "dcb3350d324e87ec56631a5381f00768c4fa434e1b07192c41162992f6925b6c"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.2.93", shell_output("#{bin}/halo --version")
  end
end
