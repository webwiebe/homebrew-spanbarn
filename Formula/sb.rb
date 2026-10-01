class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.311"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.311.tar.gz"
      sha256 "784c2f41c53b2d5b766799c1979ac9f116a93cf56f23be6933fc4d8c8eec1757"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.311.tar.gz"
      sha256 "ad9083c1eac864fa34daf58c02e3ee83e0a8a683c49545503c891ecb06b92e2e"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
