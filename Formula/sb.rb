class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.351"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.351.tar.gz"
      sha256 "9c088ec25b9ac93158cb222515ccd94450486422511bec2b0ca242e9bff92248"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.351.tar.gz"
      sha256 "745f1b1f0afbda3bc5f0ebb97434dbc55a6805c7fca69f4a0d5b00591e802e37"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
