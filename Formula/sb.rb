class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.355"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.355.tar.gz"
      sha256 "11dc1e5d1e078a1be96513d5ff39674454656edb50c1c1d5f1f54e4049873a31"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.355.tar.gz"
      sha256 "ff945d170e1feddf41b11aec4962748413b425ab7375217feb92e940fca7b61e"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
