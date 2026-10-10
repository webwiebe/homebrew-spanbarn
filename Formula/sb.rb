class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.359"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.359.tar.gz"
      sha256 "93ebaed2abfe5dbaf791501f792a80e691cb18778a3141f8a75dab5c3c0b4e86"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.359.tar.gz"
      sha256 "2c8e1e319609255891148648d6e1203064f6e652fd94ffe037c6287085c7954b"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
