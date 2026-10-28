class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.457"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.457.tar.gz"
      sha256 "c0a12e61a189f129bd2ac7dc4d8f945e9f2f94b1ea421754bc4319958bf60310"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.457.tar.gz"
      sha256 "a8ebb3ecca154744e1f9b9d1d3bf4c50e6e1d67e7ddbbdc4119c39db59d2fe01"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
