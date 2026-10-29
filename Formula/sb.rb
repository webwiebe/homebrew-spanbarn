class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.486"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.486.tar.gz"
      sha256 "1e9c743d14b4f725b66db46890e5ad57fddec7f6b6f3a9fec9e15edcee0ca2b7"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.486.tar.gz"
      sha256 "95794e3cbead2859676e042e767421c9e30e80140114b079261b1217ecd748e6"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
