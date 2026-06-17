class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.242"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.242.tar.gz"
      sha256 "3037ed93ccda4f1d1a1a6583c7bc5d0c3fc38c8c8a4c46b73a9222242f0b40f4"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.242.tar.gz"
      sha256 "c02628583ecfbcddd3cdbc38da6b319681fa1cd6c8db7e844b8763a45261ab59"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
