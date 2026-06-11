class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.2.27"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/v0.2.27/halo-darwin-aarch64.tar.gz"
  sha256 "9c0f6e5c42f3cd624c1112812d9c320b7bc8d4a3fcfffa514d15d72b7348778e"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.2.25", shell_output("#{bin}/halo --version")
  end
end
