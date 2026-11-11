class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.525"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.525.tar.gz"
      sha256 "87611028f54a09dade5d6e487ab229ca178bed86a202f9e0d3504e5cab25875e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.525.tar.gz"
      sha256 "237d9b4ea15d3df1acff5d81e04541f2cf57fd73235e6c3206a4c3b1755b2ab0"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
