class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.2.158"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/v0.2.158/halo-darwin-aarch64.tar.gz"
  sha256 "e634cf64dbf71d6c6094f402be98b182fc64158a4e91804e83963ff4e2bdb1db"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.2.158", shell_output("#{bin}/halo --version")
  end
end
