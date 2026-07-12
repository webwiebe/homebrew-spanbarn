class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.268"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.268.tar.gz"
      sha256 "01dcb7f1c684d6388a50ecb5c6a1adbd9d894f1eb912912197ac2d2a3464c959"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.268.tar.gz"
      sha256 "5986e58497137e067a6fc6c3b330a0ccfbc68df4996494653877a8ef86eb2b85"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
