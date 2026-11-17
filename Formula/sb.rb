class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.539"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.539.tar.gz"
      sha256 "a6b01632bb28941af07eaf4689eb54fbbe7eaf57ad6ff541894bbf63991b7b01"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.539.tar.gz"
      sha256 "d1c6a34e4b6231caf36ee8bf3402ddd3d563765397e747b19a7cab44ef9d992b"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
