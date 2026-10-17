class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.401"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.401.tar.gz"
      sha256 "1b7f3429afa6533ae5d3be229e16ee44b1ba5368429cbc8074d62034be815e3b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.401.tar.gz"
      sha256 "a66e0f1edca44894da95af2ae90fe210bfefec4ef8df58a231fb4a9d59a3b5a3"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
