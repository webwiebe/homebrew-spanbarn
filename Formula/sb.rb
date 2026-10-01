class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.303"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.303.tar.gz"
      sha256 "4ca8fc4e3c2a0e40864df49820917cbf9bc42ab6e832e39224197de3d4829e58"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.303.tar.gz"
      sha256 "b72d7e89c674f51f49a27aa801550147c7b7063b0f94862a2f3866ec932bcc59"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
