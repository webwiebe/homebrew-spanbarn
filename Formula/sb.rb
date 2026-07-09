class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.261"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.261.tar.gz"
      sha256 "b19c2f2f07ddd77321979bfd05c28f83a7391fc826604fb21f71506c31ed131e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.261.tar.gz"
      sha256 "6c9631db009b22ecc8961d6b4a7090879f74a615c0f64b0c8719ce3215489e2c"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
