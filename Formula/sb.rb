class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.411"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.411.tar.gz"
      sha256 "8237038e66a781fce0ac56c533786452397e4543286af0bde5957efa2e1d648b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.411.tar.gz"
      sha256 "fadad3251dd4b59f8b0c332e46c140a2e4ff827be94ab0a86482ff20c2647c2f"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
