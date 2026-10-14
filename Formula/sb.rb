class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.379"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.379.tar.gz"
      sha256 "87e9bcfe9d38dcc34974849e0b32c3ba914937299e804ebaa197a0cc92b2d40c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.379.tar.gz"
      sha256 "a16eb13d4e0fc8e7e0f0ee2af20c550160e0450ed7d8e18ba99aa2afab298759"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
