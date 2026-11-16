class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.529"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.529.tar.gz"
      sha256 "198245d0aceb63a324fe91813ead44a5e7efaf116f6667ef76e70404c1655c47"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.529.tar.gz"
      sha256 "19fdaab578ec54837d5e32e0d3ffd90beac881c9d51898db912c493874af7f03"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
