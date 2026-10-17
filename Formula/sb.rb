class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.405"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.405.tar.gz"
      sha256 "a5fcf3cac5c0b79b4ae6faf942f26f860e52a6782cf49f3d55323a62befe8656"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.405.tar.gz"
      sha256 "00c80a76247d18fc6b77a0b460a214f12fcb9dca0332a6a4f5975d1714bd248f"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
