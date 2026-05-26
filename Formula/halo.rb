class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.2.7"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/v0.2.7/halo-darwin-aarch64.tar.gz"
  sha256 "a3e9a589c0805bab0c727168b7e3e6b7cf260dc8de94eea68adb5842b6b23020"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.2.4", shell_output("#{bin}/halo --version")
  end
end
