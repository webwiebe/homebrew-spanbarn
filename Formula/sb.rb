class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.415"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.415.tar.gz"
      sha256 "2887dc24a11a6adb4c1020e07a20fab70dcce2daccdeba57cb8b550fb29f2967"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.415.tar.gz"
      sha256 "6c3c8d3c1de368e22ebb7134c4abc9464f88f624034cb56e19466ef7988c2234"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
