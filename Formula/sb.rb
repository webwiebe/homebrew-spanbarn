class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.558"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.558.tar.gz"
      sha256 "a8a18011dc3dbba56eaee148e568ee02b48be7c7e84f594a3acba3295983e122"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.558.tar.gz"
      sha256 "dbbdcf66e2a504cd2440c51993165cd6bd9579506f1b0bff13c2ba50c6db1582"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
