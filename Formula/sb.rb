class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.423"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.423.tar.gz"
      sha256 "6abd91d44b33545d6a76a861e408f3408679d9826d1c6d50cf44467bf8c4ade4"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.423.tar.gz"
      sha256 "28433c38c0368ea2636f4e94cec0e9b2c2eb95604298779d8344b9b1384ca114"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
