class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.523"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.523.tar.gz"
      sha256 "9d73bcb9a53df9f5d1469a2c69ce35becb31d51fe7961fdda715cb7d29754256"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.523.tar.gz"
      sha256 "897423ce9446cefd52e92e5f39898b88c383c029304798fd13c76efe70597634"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
