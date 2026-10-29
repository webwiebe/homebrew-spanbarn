class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.481"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.481.tar.gz"
      sha256 "d961d71d5f1424cb66300bdd00ec9d2dccbe4d5eac0104aa03febc4330bd9378"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.481.tar.gz"
      sha256 "d780069a5cc38785618230d470b8fd0177d32140a358eb3be0b627f1da1699e8"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
