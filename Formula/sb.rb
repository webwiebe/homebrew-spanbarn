class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.352"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.352.tar.gz"
      sha256 "e05ab5c5865669cbfed5ac3dd8b6b09df5e33345db3e79a6cc8fa59f83623718"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.352.tar.gz"
      sha256 "53e29bdcb7e5c6c0b9d55d02f3c38fe27bc6c3bd514ef63635fccbc3fa2c0272"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
