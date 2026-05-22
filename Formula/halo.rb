class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.2.4"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/v0.2.4/halo-darwin-aarch64.tar.gz"
  sha256 "40dec3e20ab74c0c0ca7891f2b9721bdee65a72fb35b97a13600861cf5d24e80"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.2.1", shell_output("#{bin}/halo --version")
  end
end
