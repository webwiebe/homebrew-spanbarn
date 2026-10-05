class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.349"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.349.tar.gz"
      sha256 "119f7b22980b04e08f329531cff28d3d8bb9114c17c18323b96c5e9dd377dd73"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.349.tar.gz"
      sha256 "c5d1847f152711dc218cdab84a2faeed7e88cedb786bd6f8796babf831a6cf81"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
