class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.438"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.438.tar.gz"
      sha256 "b4b7eb38ad277b86e44df8ef25a62d4b326c74f664d3c8d859644a89d12b2ece"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.438.tar.gz"
      sha256 "0f3da341909660b49b1124b158d885922154898980ef8d55aff74ce0d34531ac"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
