class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.2.16"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/v0.2.16/halo-darwin-aarch64.tar.gz"
  sha256 "a832c957061020a09a15d98f0e3253f93034d1cb0f32d5a7f75455a98bb97522"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.2.15", shell_output("#{bin}/halo --version")
  end
end
