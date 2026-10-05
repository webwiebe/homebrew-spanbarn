class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.350"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.350.tar.gz"
      sha256 "43b66889305b466de96b69d75521ae3761391176086dbce64bf349f9bfa36642"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.350.tar.gz"
      sha256 "a9fcc20789cd52d07af3df5e504e16f09a44a7e7627998929dd4d8d2744199ba"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
