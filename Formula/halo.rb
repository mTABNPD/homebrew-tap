class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.1.2"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/v0.1.2/halo-darwin-aarch64.tar.gz"
  sha256 "923eee8a012d22b3c17a3a75d6bbc039d89ab9c613dec97d05f9bd1e05373f95"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.1.2", shell_output("#{bin}/halo --version")
  end
end
