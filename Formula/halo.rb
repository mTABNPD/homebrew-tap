class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.2.44"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/v0.2.44/halo-darwin-aarch64.tar.gz"
  sha256 "e81254012282514446b5acabd8de4be85892900a4322f9eaa87d4b0dc8d3255e"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.2.43", shell_output("#{bin}/halo --version")
  end
end
