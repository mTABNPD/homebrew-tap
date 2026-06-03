class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.2.14"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/v0.2.14/halo-darwin-aarch64.tar.gz"
  sha256 "f479d9fad3615ad6f930dba24f880883cd7e88e3e1d5f38b1ada6fb26b636665"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.2.13", shell_output("#{bin}/halo --version")
  end
end
