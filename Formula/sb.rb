class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.245"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.245.tar.gz"
      sha256 "5d24c51742d3d1067ba74db3923039abd88269429c4754bc116209c7e3558461"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.245.tar.gz"
      sha256 "c0264f8f383ad7be046d94e7c401deca5519dd681a5f64f2b33c98e18eba3e9e"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
