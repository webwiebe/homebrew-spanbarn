class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.416"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.416.tar.gz"
      sha256 "9526043c9ee8f3167072a68ea85aa8f279f48285e35aafb31c0f013ccb4aa2d9"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.416.tar.gz"
      sha256 "b6af821e8b877c0d2ed0e5b02e9e4e4c5e26aeae7e427863bed8f607e5ab0c19"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
