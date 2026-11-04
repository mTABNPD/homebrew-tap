class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.2.167"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/v0.2.167/halo-darwin-aarch64.tar.gz"
  sha256 "c1f384f2dbdd4cff5e0cb9dcf4e610c3f6554d1f366f0b452e9db37cfd51b62f"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.2.167", shell_output("#{bin}/halo --version")
  end
end
