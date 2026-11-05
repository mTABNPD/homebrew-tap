class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.2.171"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/v0.2.171/halo-darwin-aarch64.tar.gz"
  sha256 "1d005a6d4228ceadcd88f9d5a384b8b0b861131c764746442b7a7f6a2580b79d"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.2.171", shell_output("#{bin}/halo --version")
  end
end
