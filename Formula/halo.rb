class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.2.159"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/v0.2.159/halo-darwin-aarch64.tar.gz"
  sha256 "965e3a76f10f18eec7db81b2e7a191fb0071a5694364b70c687c7d88972970c8"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.2.159", shell_output("#{bin}/halo --version")
  end
end
