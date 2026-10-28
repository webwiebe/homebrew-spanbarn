class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.452"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.452.tar.gz"
      sha256 "df857279c8a33fa6cf39539be90fb003cf93f57ca815a5b0933f65f721dfa844"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.452.tar.gz"
      sha256 "b2f7859c3c7261940c255846918429bfffb5f30c2a2b222f07138dfe0806a3c2"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
