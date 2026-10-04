class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.346"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.346.tar.gz"
      sha256 "254cf3b0da4f5e1296f90c43c152bfa184b0dd8b2496a379444b487afc7dcb56"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.346.tar.gz"
      sha256 "ee6f3962a22421ec1f4ade5d9c9298a34ec99cc8796239f494463328ac28a5b1"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
