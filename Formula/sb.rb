class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.387"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.387.tar.gz"
      sha256 "3d746266aaf2d1ab564481c1d2ebc255489bafd5b3d1b4182812fcb835220025"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.387.tar.gz"
      sha256 "d3a7b31d1f70f8d4e0a168bcd4213149d91a101dc30722b0d71004e5795ee7a2"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
