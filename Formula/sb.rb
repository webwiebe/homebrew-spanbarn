class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.354"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.354.tar.gz"
      sha256 "4dbd60560232cc91cfc7a8b4a1e9997cb69e16013358f5b44b3b6f944da3124b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.354.tar.gz"
      sha256 "11068782889bc9995bc8d3ca289e534661c67b349e15bbd239ec829aeb02ad34"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
