class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.508"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.508.tar.gz"
      sha256 "3d4ade53eeec54fa0dd460a1643eb0ab4fdc93836971cd90f86d72a72ed6c431"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.508.tar.gz"
      sha256 "053a040d3553fa21fd414cd8bae3a88a62d7c757cd51212653e73c0d334d1f98"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
