class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.395"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.395.tar.gz"
      sha256 "5dc26e85c049aaa2e197a40a2c6793c826da731ed8b81fc48a49ae77af7651f3"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.395.tar.gz"
      sha256 "0a080920004905975d83581ec77e2032e504d04a9cd93705e525932f2886afd0"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
