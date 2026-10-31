class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.494"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.494.tar.gz"
      sha256 "fc717b852f82d2f96939b8b7252e0b57d48a2c8c0dc5f1e46f918b36bd059822"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.494.tar.gz"
      sha256 "299c779423a2029c21fe5a3472ba0fc1700c16d929aa14de695b5e3e02f2bea9"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
