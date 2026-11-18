class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.555"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.555.tar.gz"
      sha256 "5cb59284218d673942f6f1f92a6be82e32c0a377930c7cb0bd90d1c42e6ca7bb"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.555.tar.gz"
      sha256 "8905f1aa370aad71ca8bea1da2ca9a6a5cf9fa6ea88bea1dc5f07b7d32c1f9f4"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
