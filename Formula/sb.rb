class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.370"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.370.tar.gz"
      sha256 "74825c32f6d50ec40ff5f7203459576897a083769068de6dbd09faa4d5daba87"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.370.tar.gz"
      sha256 "cb4e6d552ae27a45e1931be9a96759aee2273cde49a25477c4fac68b1d31f0b3"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
