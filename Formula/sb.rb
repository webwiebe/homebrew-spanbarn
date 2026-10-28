class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.444"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.444.tar.gz"
      sha256 "55f4d94d7f3ba83df8ccd83789c135a546211961ca2eacf45d13babf2d0e58d5"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.444.tar.gz"
      sha256 "190249400057b43f7c0e4a11e64fbb97ebbf6ad65f97097c689d1d3cddbc710f"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
