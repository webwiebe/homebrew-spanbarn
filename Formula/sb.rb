class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.314"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.314.tar.gz"
      sha256 "586a7a5b4f8cd3c724533df3b26b59a0350704821a55626856642e65751ec2db"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.314.tar.gz"
      sha256 "2ef90ca8eb3ae490f99a44b0529dac612ed7ac610c676baea5cbd7d422785c39"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
