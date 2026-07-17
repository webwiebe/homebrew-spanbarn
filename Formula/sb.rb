class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.283"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.283.tar.gz"
      sha256 "a10dd2387c4e0d3e8cb759bae6a168d876d71cb229ad459bd6145322e6d57d08"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.283.tar.gz"
      sha256 "d07289392090bd6f2a0b0ca18508e1e6d9253b2e1db40eeb8ba33bf53861a53f"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
