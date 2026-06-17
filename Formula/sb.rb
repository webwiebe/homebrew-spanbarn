class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.238"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.238.tar.gz"
      sha256 "cca443be91b8833acaffd30484a713c0448bac9650af5b38c11c1be571a4e9ac"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.238.tar.gz"
      sha256 "36274b41dbe7e88f7986142ce72b4df3974109308d95a8c3eabc81c45f30a611"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
