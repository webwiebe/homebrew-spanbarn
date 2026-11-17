class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.549"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.549.tar.gz"
      sha256 "4b30cc458676d1ee2d12db9e154ff6b4f00e929ae04f0689d524cf7a440cb20d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.549.tar.gz"
      sha256 "bfd301b52a6892ff4528f3e12b165972ffe3710286f7fe2d00ba27c6c06d8404"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
