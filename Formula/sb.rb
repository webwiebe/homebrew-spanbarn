class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.573"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.573.tar.gz"
      sha256 "0ceef3aa88032b619c323beaff998f56486998683355a3203beb5f0f56bda004"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.573.tar.gz"
      sha256 "0778a9cb4540da352cf1bfaa47443e4a876b5580f9277ce198324e6a7b99bcf7"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
