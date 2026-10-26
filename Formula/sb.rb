class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.434"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.434.tar.gz"
      sha256 "cb5a850638c77101a0d6d25142a74fb53d4f5cba1275462f047c999b9c94a15c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.434.tar.gz"
      sha256 "e91fb95c39fa192d761eb4f015ea843f24dd582f08d46665ae190e261dda87d4"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
