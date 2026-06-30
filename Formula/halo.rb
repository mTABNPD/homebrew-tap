class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.2.54"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/v0.2.54/halo-darwin-aarch64.tar.gz"
  sha256 "aba964c5b02e956832322bf4be80b2d7c8fcec893bea96ac8920317040ad8076"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.2.44", shell_output("#{bin}/halo --version")
  end
end
