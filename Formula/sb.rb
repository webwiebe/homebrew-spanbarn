class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.231"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.231.tar.gz"
      sha256 "bbf97ff60193a369cc2479ec5c6ccac2875988ba13304bced6ab5beed14ee8b0"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.231.tar.gz"
      sha256 "1081ab42e04be12992de7b8e5795d6d04cd38f73f2882abfe0e9fc7dd9c6a124"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
