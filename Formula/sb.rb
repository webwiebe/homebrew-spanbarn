class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.463"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.463.tar.gz"
      sha256 "afaadd2da3ee87ec7534a908a7306a764214b4621a50879b5e71a464bfb97ef8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.463.tar.gz"
      sha256 "9eb5e905ff6d02c971e441c97d8aa05e7406ea0ed373ef367b6a4a9a38fce93c"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
