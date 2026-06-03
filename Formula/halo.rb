class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.2.15"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/v0.2.15/halo-darwin-aarch64.tar.gz"
  sha256 "c37c0f53b1d01e9926416aae234d019b94298446417e3ee49756096f3f7363e5"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.2.15", shell_output("#{bin}/halo --version")
  end
end
