class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.433"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.433.tar.gz"
      sha256 "931f7971626b62bda82902f639230588fa86d1789db0a3c0dacf178cd7816882"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.433.tar.gz"
      sha256 "d81a6a3cb62e498ecceec6f5bc682b4d0c13ee97b20abf36259c7d78b83444b0"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
