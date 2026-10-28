class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.447"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.447.tar.gz"
      sha256 "0667796f0de94d1a42cd44e4de2c219c2a49e8fe4d191486ac8b7ef44890526b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.447.tar.gz"
      sha256 "ebe1f05a2384e7f745f5203c5b820055141d18e8a5b7cbc2f5eb5218812a1579"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
