class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.474"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.474.tar.gz"
      sha256 "723b97401b1a525c10753d41e14c370123b8799c92cfd9656a4c9feb001f02e2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.474.tar.gz"
      sha256 "d2c5af65a421df98cedb7b772416d7c7f929fa968866f4e0cf290e7bfb21f71f"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
