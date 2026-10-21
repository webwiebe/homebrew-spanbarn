class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.417"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.417.tar.gz"
      sha256 "4b04a1b71afce9e6905e45b5b2fe1b249cb726477340d4895c07cb4c8967ccad"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.417.tar.gz"
      sha256 "5d39b176aad47b82e4f61a8e07628b9828b32d796e8a858b2daf27c2165336bd"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
