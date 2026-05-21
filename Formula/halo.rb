class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.2.0"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/v0.2.0/halo-darwin-aarch64.tar.gz"
  sha256 "7e89afb263c7f20cb14e6be6187c2580803e499ff1979c8d0c658ce687892d10"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.1.2", shell_output("#{bin}/halo --version")
  end
end
