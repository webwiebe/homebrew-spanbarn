class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.392"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.392.tar.gz"
      sha256 "0aa7d264f671a7bd002c48c67f7325a63fa15fbbcef8179da0892cae382439ec"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.392.tar.gz"
      sha256 "c6f4be2db5c80a8adc76b2f1bfa056d6c03560a23ddbd7a75ef002be3172d953"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
