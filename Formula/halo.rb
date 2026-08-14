class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.2.89"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/v0.2.89/halo-darwin-aarch64.tar.gz"
  sha256 "f347d5077f039214a2c363160edbfbc75229aa76bd8a9ebbbf8e7afd9080d197"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.2.89", shell_output("#{bin}/halo --version")
  end
end
