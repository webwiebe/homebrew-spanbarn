class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.480"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.480.tar.gz"
      sha256 "bcde40c58b7de739beb88acee58e657fbf27bf9564899d5c71d265fba21e0f22"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.480.tar.gz"
      sha256 "71ad3f12d6b6dc5f71fc187a46d9c55bb039b5e83c6c5a07ade80d27ead05a4b"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
