class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.455"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.455.tar.gz"
      sha256 "013719ad4c862f5fb39a012c70f74729eac6269ad3540553f71f4b1984c9a36c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.455.tar.gz"
      sha256 "6ba96cd60703df1819bc5a9a03e822cb53cc6fd902cc67ed7fd12b3a32cd01c3"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
