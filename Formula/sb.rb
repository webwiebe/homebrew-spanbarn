class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.289"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.289.tar.gz"
      sha256 "350dd9844d11db5ddb560adff309a3901451eb4a16d697770d0753d2a2e8a84f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.289.tar.gz"
      sha256 "71e9b9a6e941cc769fe3d0b4b6f96217c6018f6a08dacdaa2d5eceeab11aa3f6"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
