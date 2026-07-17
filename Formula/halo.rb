class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.2.85"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/v0.2.85/halo-darwin-aarch64.tar.gz"
  sha256 "e9d10ceeb7ad70683a6db8f85a78e4e07599cf60211e81c97a3463c06c200bac"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.2.85", shell_output("#{bin}/halo --version")
  end
end
