class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.581"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.581.tar.gz"
      sha256 "a310cd3a51fb7d54aaf0bf14b0d6a2a80b21770ad042b543c9ee1c50aa3d1072"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.581.tar.gz"
      sha256 "5e7c4b43493326065ba23258711a0c87a63bcc9d65d966253d09a3994a176dd2"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
