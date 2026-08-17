class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.287"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.287.tar.gz"
      sha256 "5bc84f2ab2f51f18dae48257449382b7ca8ed2b20d4a14199564086501233198"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.287.tar.gz"
      sha256 "f0abfbe3640c8e4bb3da389fb23932c1d9aaf2cf7995e36b100fed30c1f41878"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
