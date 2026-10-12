class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.367"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.367.tar.gz"
      sha256 "3bb66c8780e43528b1f173e10bd43ecf4fde01f09d178c206c37d827604b4d49"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.367.tar.gz"
      sha256 "b9af4c0e7a9f5b56750d5c56c04260d27fb5c2a0300803942ec831b0d3a14e2f"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
