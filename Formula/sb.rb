class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.340"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.340.tar.gz"
      sha256 "cfbceb5327a20623f31f0b575f1db0dc4980b272bdec85b6e483e1162e9c3bac"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.340.tar.gz"
      sha256 "d1330193b91940987712939f92b362782de5f35648b89cd7d5694b7650e2c760"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
