class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.230"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.230.tar.gz"
      sha256 "6cc95f4e2e86dd14235f88da6be2c5ec0bb51152e2f72f9b535068caa50c77cb"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.230.tar.gz"
      sha256 "ca77af6385b021abd4d4b3e7254c876735b6448740ef0c39d3b8f85aa35acc10"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
