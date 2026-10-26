class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.435"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.435.tar.gz"
      sha256 "e7ca2efe9282dd1f542b2141a5cf2823554e9594629722f2696c78003c9e7569"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.435.tar.gz"
      sha256 "b69bc9c530b99e00fd68d4c06d6cba072218143261a164781c68c026a67ea80f"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
