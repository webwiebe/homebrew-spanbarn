class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.532"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.532.tar.gz"
      sha256 "dba7fabde5ce1c33f30491f1c76d5c422525b105bcb0ee20bd4a8aec78b99fb8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.532.tar.gz"
      sha256 "1fc8091ce04137369bbcfb587c1abb4764c661e2d210b0c73e99df3dc5296b56"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
