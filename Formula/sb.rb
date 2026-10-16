class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.383"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.383.tar.gz"
      sha256 "b719688050fac95757efb4c313d8634d735b7ba2f85860d118e498d51e789b83"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.383.tar.gz"
      sha256 "8bd98a9a8ff9e4dbf63fabaa39e6fa0dd372a71313849b4de90704d6537583ef"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
