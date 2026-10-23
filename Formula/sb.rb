class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.419"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.419.tar.gz"
      sha256 "8a717d8a7d91282b6706e4c3a933b260472103114ec6dda5549f4ccbbb4e3ffd"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.419.tar.gz"
      sha256 "31de40c2093750f216a7caf18e76b82ac7dd860f48005815f797753257b3ac15"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
