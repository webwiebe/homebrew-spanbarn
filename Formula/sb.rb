class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.291"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.291.tar.gz"
      sha256 "8912a92aa512805176529b286463f9afd7c7fdb420ee45e996c854f2aeaa3e90"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.291.tar.gz"
      sha256 "56406891313eba42b43c7d59eb4d524c6189e01389ae2ec0593952fcecc2226b"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
