class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.571"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.571.tar.gz"
      sha256 "1be809d2857e951fb87b8eb9ce54fc7a7e8bfd7be52a3099d77d03a0c8e68656"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.571.tar.gz"
      sha256 "6a22bf11e8f9b50451a2b61b86f4c50a94f2aada9e8f6310c97fa377e292a82f"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
