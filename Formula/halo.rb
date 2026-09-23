class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.2.110"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/v0.2.110/halo-darwin-aarch64.tar.gz"
  sha256 "db33ac18c495598a263ee0f7f2594adcd93bfaa2f5d9e8c606b55624752b7048"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.2.110", shell_output("#{bin}/halo --version")
  end
end
