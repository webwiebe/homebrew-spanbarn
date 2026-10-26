class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.440"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.440.tar.gz"
      sha256 "9e286c6b657b7c6d091a9b79eb1867c98d6925984fb5281d249be054ac056797"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.440.tar.gz"
      sha256 "ed2f33de7068d564384ada0b0050bab209722c71d9bb0946d96638bef464dccb"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
