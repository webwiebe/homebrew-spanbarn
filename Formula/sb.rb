class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.313"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.313.tar.gz"
      sha256 "255677dbd0eff99fc49285b1ac07fb72a2ba1bf5d9e024c77c0703bc3c8fe7f4"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.313.tar.gz"
      sha256 "033e2b555bb2edf33a9e1cb4add318a9f355f64fca19e03d9d766653b9628296"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
