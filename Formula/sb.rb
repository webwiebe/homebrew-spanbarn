class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.338"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.338.tar.gz"
      sha256 "5c47f518298c86f321b0d09c532c9d74abe4ac5723e388903d8f3e945772c38a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.338.tar.gz"
      sha256 "317dbbf233334050858854c377b7033f35ad1dc8dfcc85ee2cb135ee782f79de"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
