class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.279"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.279.tar.gz"
      sha256 "6b605d9bb2fcae4df0aad6b1f00f62a930e0f7997cd731729786263fb438e9e6"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.279.tar.gz"
      sha256 "02a20ee21d67054acc9ac4f592dd722fa8a1535b4b7fe0a73dcb1386451c925b"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
