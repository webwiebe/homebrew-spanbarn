class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.335"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.335.tar.gz"
      sha256 "4517b23c6cc6f071a71ffe9c67eaa853d9f0d84186525752fcf40ca9783286b6"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.335.tar.gz"
      sha256 "e0e2238373bb643913e8d5ec27dd83a5a01a0b4a30c2da6902ed97f8890dc72b"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
