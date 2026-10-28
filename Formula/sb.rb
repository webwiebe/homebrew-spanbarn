class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.449"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.449.tar.gz"
      sha256 "c6c622e49739d75c1794f3b4b24538970fa7fdc8927a39fa263920e93862696a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.449.tar.gz"
      sha256 "7ea178ab0fe8e1fadf030532c30c6d68aa62977b97dc1ea128f88fe85264f257"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
