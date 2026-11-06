class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.2.173"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/v0.2.173/halo-darwin-aarch64.tar.gz"
  sha256 "948c5027eef58148ae9265e1f684d08ddce5d6906541c6416aa90c14313645b2"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.2.173", shell_output("#{bin}/halo --version")
  end
end
