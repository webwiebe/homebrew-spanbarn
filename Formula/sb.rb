class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.274"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.274.tar.gz"
      sha256 "1cbc01623e1f97920bec31b49577d5672fed2e5184f767928d17c20d9a7b53b8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.274.tar.gz"
      sha256 "e7c23ba52ee0c6ca5050b3fab7c065bf29f7c4397d576bfe9f2af819c14f8e4b"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
