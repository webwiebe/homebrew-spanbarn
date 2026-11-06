class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.513"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.513.tar.gz"
      sha256 "d77999545904c225f41c27e6bdded2d6c312e7337863c66bc0f743baa0cd4ba5"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.513.tar.gz"
      sha256 "f9fbd5a37805eb7bb85098b5e863f5278c0f410da1f0e472348d40f15153e8f0"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
