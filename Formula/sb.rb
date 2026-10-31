class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.497"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.497.tar.gz"
      sha256 "b8189c11c786aecf3c5e1244c66da6af8eadd1ef2c6cd6c1174fc696a0d7f554"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.497.tar.gz"
      sha256 "5c38256734d6832bc93dd2068a8d7de1dcdca973ea2826bc11c46e12d919bd33"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
