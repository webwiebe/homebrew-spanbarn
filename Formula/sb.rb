class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.386"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.386.tar.gz"
      sha256 "1d81b5846c93fc84d0e1b96a224d72685541361f90dd6d60ffbcc59836c23159"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.386.tar.gz"
      sha256 "76376e7b8290e1375fece196b74dbb4cb7749c99579a977ce329a5645381f543"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
