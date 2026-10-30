class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.489"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.489.tar.gz"
      sha256 "9a895a05cc1dbbf922dd978068b69a5ab0689dbff281d3d2c9ceec75069fe56c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.489.tar.gz"
      sha256 "164880c585c58d953175f405f54bddcce9d7df021ded0aa88b66c85b76f8b4f1"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
