class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.550"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.550.tar.gz"
      sha256 "0a42e4862e835bf151e147f91ec164cc6934ce9f606bcb20141f757b0ac8275c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.550.tar.gz"
      sha256 "bf8196c6e2e2f590be73cf3f7469bd2c15482773e6fa588287f4e5c3baecdc6f"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
