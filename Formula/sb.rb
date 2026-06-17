class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.236"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.236.tar.gz"
      sha256 "c3eda686be6500d156e744379afd3c341ba5032aa17ebf656b378e2a0739d3a8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.236.tar.gz"
      sha256 "7c892048f3f73450fb81aa43f3e3e344a7bfc3d70946db6f33e668bfde1bb2ae"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
