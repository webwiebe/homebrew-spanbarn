class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.534"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.534.tar.gz"
      sha256 "24392384321197f3a3d865cbadb001ae2404330f904e84b8216daffb2ab4d568"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.534.tar.gz"
      sha256 "9aa5c055051096540c663723406c32eae2dc1aa0b30089f97531cdb0d1f5c425"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
