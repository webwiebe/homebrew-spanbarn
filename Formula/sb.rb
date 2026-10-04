class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.328"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.328.tar.gz"
      sha256 "36c9ed68f2d71a66bdfc2da44fef2a09417fdfdf6ff572d0dc76796f6bf70683"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.328.tar.gz"
      sha256 "a5f380cfa698de65d283ac6ceb122bf5b682224f3650f83113d5ade7edfa1620"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
