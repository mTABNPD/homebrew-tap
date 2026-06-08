class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.2.19"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/v0.2.19/halo-darwin-aarch64.tar.gz"
  sha256 "9e75b1d251d96cdf8ecad8df573b0bae41306ac8e3bd711dbeb4a13b081ae38c"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.2.19", shell_output("#{bin}/halo --version")
  end
end
