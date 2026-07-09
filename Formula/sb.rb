class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.253"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.253.tar.gz"
      sha256 "8a5416648af9e165fdeb6acfd895ae0f433c9b045af71c2991ac2a358f5ca313"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.253.tar.gz"
      sha256 "617aa39679346c05ef1b924e2ec4aace0c458851ae46387861b1ee1715911ca8"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
