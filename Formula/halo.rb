class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.2.59"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/v0.2.59/halo-darwin-aarch64.tar.gz"
  sha256 "5c9721b55296e1e01a1010dbafc701c49c37db6a7d72a78daeef39b49ac39a35"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.2.59", shell_output("#{bin}/halo --version")
  end
end
