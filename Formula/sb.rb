class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.316"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.316.tar.gz"
      sha256 "f7e1c9704c44433d096cd630ce7d7d84725684e897e42d3ba7668faea4281fd4"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.316.tar.gz"
      sha256 "1d15e7444d5671743d75febb2c85d3383d99430cc3d88f1df6cfbd10b931bc0d"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
