class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.499"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.499.tar.gz"
      sha256 "3b0b42ab3e2a1b4b6ab0c5b87ae124a17e74140d2a460a05a4db22557151677d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.499.tar.gz"
      sha256 "6080de58f6e732d464fbc2c35357ee5544c83fcb608602d82e384ff8ce8306b2"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
