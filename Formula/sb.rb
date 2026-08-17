class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.290"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.290.tar.gz"
      sha256 "31e88c102e979e2b2e7fbf6b4112ff413d8c7438b04e8a4cb213fca383de0a1b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.290.tar.gz"
      sha256 "92a3bc380c2d092b8931fb672aba30d70799436eca90666b2b97e5bbf105fe52"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
