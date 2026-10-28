class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.461"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.461.tar.gz"
      sha256 "69ca94758ad6b3cef12f776cca622b05485bedf5e4804a24e6cd97f4a6767c2d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.461.tar.gz"
      sha256 "eb6a8052d365a3c93e0f1d5a1494ac811b9d77552ec0ccf155f56fb30a776d71"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
