class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.437"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.437.tar.gz"
      sha256 "abfcc52c4b6d1690a2de9b7a477d7b41fecb0386a77c1556c0507847095107a1"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.437.tar.gz"
      sha256 "92fc19fbb9d1d41cbb25c9b3d768a893574470e69ed1b5db0ab9a41a98d0ed0f"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
