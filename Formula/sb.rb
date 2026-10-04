class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.345"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.345.tar.gz"
      sha256 "38b0a5452dcdd84892c1bd0644895c9f21ecacf03120c40744866496b32e846a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.345.tar.gz"
      sha256 "1dc334742bc3ebdec3a216ba31e7be6dbbaa6b10f59dd7335579e76ba6d54630"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
