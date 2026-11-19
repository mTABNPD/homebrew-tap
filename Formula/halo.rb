class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.2.187"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/v0.2.187/halo-darwin-aarch64.tar.gz"
  sha256 "96d43ce8c8a977115854e2dd18972574ae1a5907e0008ed65ca88bb337edaaa5"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.2.187", shell_output("#{bin}/halo --version")
  end
end
