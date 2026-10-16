class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.384"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.384.tar.gz"
      sha256 "d8741b3f692b19cf2fcf45472a170b970a8103dc9daa0a65c0dd43acb2b7c1bd"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.384.tar.gz"
      sha256 "159fdfe71f6c36438bdeea1388f823969c5b85033818574b242b6f00f96632a0"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
