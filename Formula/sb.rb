class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.572"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.572.tar.gz"
      sha256 "f8f29dfc1aa4716cffdb951c9d213323260ab01b884f04dab5053aa15fd4e42a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.572.tar.gz"
      sha256 "57dd43e07b991dc8ee36f64a86195175787c8690b00f14ea758564301a149529"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
