class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.292"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.292.tar.gz"
      sha256 "e6d66bafb1fa31984e6dba0b8f6ba2ed24fde7ee22d33c129ebcb5e07950b717"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.292.tar.gz"
      sha256 "efa6631f7b3a1fe8bde4f10850ea37b2e154b0c531482252050a3fb9367a9a0c"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
