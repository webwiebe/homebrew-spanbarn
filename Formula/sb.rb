class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.462"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.462.tar.gz"
      sha256 "e8eeed2499d1d2e6123fb8d144c45ab5d4606171829a6718b97523d62bb6569c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.462.tar.gz"
      sha256 "5f385979877958382300a87d9c54dcb860ca564e381d6fa324766d1c908ad9f6"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
