class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.376"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.376.tar.gz"
      sha256 "77f4c61022916dfa6c30cdb71c9d2eae9e3544c7bcbfb4ba88117035d3be98f7"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.376.tar.gz"
      sha256 "d839f2238acfc2f96a2f211ea23c34d8e1f8f2ae46381c852a2483dd7717dd5b"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
