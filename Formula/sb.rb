class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.577"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.577.tar.gz"
      sha256 "a631ee7baa218dd75cd5b313e58901d911432a1cad38d036e0206eba0223e6e8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.577.tar.gz"
      sha256 "3087cd0034f8028184f26dd877da02f761f5e227b02126d284801e98a52ae5b4"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
