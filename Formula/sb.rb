class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.237"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.237.tar.gz"
      sha256 "c601f2d8957abb6beb08e0fd6c2264c8133af7fd1c1f18ef8e0c24b2bbd9de14"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.237.tar.gz"
      sha256 "b7ef2decec46855e0c08c5cf5f86ed6a83888bf36e92c29a356edf3fd4ede186"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
