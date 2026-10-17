class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.402"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.402.tar.gz"
      sha256 "b79cdb2ef49999c63e3611905e09cbe8c97666371283c07b68b19d4dd8238555"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.402.tar.gz"
      sha256 "e8b920340f9d8379498f11ebc93d796420af281ba096c1c14bf945ede54e42c5"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
