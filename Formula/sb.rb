class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.368"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.368.tar.gz"
      sha256 "5a91bb7ea0c81cff21dfb9ec1ae979961c3b0f586a433fc5551eb541fb9da372"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.368.tar.gz"
      sha256 "1f6d1dcb367ff3ebf1aebf1ddf0f515aa2218293d6aebd6358b02b16aba53dd9"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
