class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.484"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.484.tar.gz"
      sha256 "4566a41c1b93c2f58d006bd90945ecc01a7dac10509f802da15d831e8c4f0a68"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.484.tar.gz"
      sha256 "8de1c7a4b7e976a9cfc5666c2abdb4f7aa363e7fc13460665ced1ce2eff5d794"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
