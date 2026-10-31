class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.496"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.496.tar.gz"
      sha256 "e00a5fccbc47a169a5da6b439c8d3b5e51b7796a2c0dc4c4e8ccca609dda48b9"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.496.tar.gz"
      sha256 "b42c91ed84371da5c8dd6875b0ee6975896e08591f6a3675da7f0700952be4e1"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
