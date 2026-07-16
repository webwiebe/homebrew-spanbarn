class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.281"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.281.tar.gz"
      sha256 "d7ecfb53ed9702e7e5b8d263b478111acc57e9f7950c202232bfe0628d6e265c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.281.tar.gz"
      sha256 "9011fe3474bbf3bf0562843baf70f0ec3da93225b670e373fcb2045501330f6f"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
