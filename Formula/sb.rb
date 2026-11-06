class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.517"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.517.tar.gz"
      sha256 "516b97784f73d6761430e7f4305988b60f13cfe6dd6d98cee1e87b228e357f26"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.517.tar.gz"
      sha256 "ad4e5fe785e70d557bbdfc7b815653b8bd801f55d5bf19308e313a511729179a"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
