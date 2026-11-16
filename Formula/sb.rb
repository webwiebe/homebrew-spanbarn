class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.533"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.533.tar.gz"
      sha256 "14dd8fb19fa5f1dab3a525f29dd5502d9312fae2808de7e29a682bf91766edc2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.533.tar.gz"
      sha256 "bb3c6096978b7e93e0e3a163f2ce4c3338504ce129a619e563a9aee72c7e065e"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
