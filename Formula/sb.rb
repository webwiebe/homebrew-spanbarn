class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.478"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.478.tar.gz"
      sha256 "3ba53e0521a0ec657bf15663fe199d6deb373c6b68322b85d4fb3e1a777d0610"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.478.tar.gz"
      sha256 "bd49c154b9470166243a815c58e2223bd6d860513e44c2d3a1253a0ddd3d55a5"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
