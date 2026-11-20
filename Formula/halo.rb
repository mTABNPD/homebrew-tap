class Halo < Formula
  desc "CLI for the Halo platform"
  homepage "https://github.com/mTABNPD/halo-platform-cli"
  version "0.2.190"
  url "https://github.com/mTABNPD/homebrew-tap/releases/download/v0.2.190/halo-darwin-aarch64.tar.gz"
  sha256 "68e9718e424461d7435ed8b11ca83ea3d027e223b0d43c24e14ea92b8bcc6e54"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "halo"
  end

  test do
    assert_match "halo 0.2.190", shell_output("#{bin}/halo --version")
  end
end
