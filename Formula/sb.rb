class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.309"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.309.tar.gz"
      sha256 "e34b04f1a36cff25dd6909d0580db5c5ba906283ea1b241d1b4d98193eab3587"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.309.tar.gz"
      sha256 "cfd8e1a0f696749239f8b3f8cbdc998861e9d61c1c5530b20fa6197ba65b9c6f"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
