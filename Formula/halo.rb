class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.2.42"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/v0.2.42/halo-darwin-aarch64.tar.gz"
  sha256 "7b852ca9b8792b0cc75b8c39f6478dc6f165649cbc21b041aed1eca0b794ff6a"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.2.42", shell_output("#{bin}/halo --version")
  end
end
