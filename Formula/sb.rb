class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.439"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.439.tar.gz"
      sha256 "e51eaf437cffddbf18b21fcb881f400618a872949a7150bda18896a7b1be6854"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.439.tar.gz"
      sha256 "a5b1683fc02caf45f525d15fc07392f9a9dbd923014d2f5e01ae1925e10d75cd"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
