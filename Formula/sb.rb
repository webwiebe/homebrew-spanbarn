class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.518"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.518.tar.gz"
      sha256 "ad1b4f5f9556d4b74eab4c1e40dd844b9fdb8f4abf1cbc9d60c1a4fce87805ca"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.518.tar.gz"
      sha256 "e9ca804340abb5915001210fb2d1ee0d3250e3f17d914b1195d9d8e359ea4884"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
