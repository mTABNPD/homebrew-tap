class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.2.105"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/v0.2.105/halo-darwin-aarch64.tar.gz"
  sha256 "80cf7fcc374e63d02037134268d9ad567c29a2b9f2e25c9d7c7eca62c739551e"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.2.105", shell_output("#{bin}/halo --version")
  end
end
