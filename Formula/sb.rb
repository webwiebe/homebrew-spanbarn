class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.369"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.369.tar.gz"
      sha256 "e5ae18f645d4ea6eedb7139a4d314feda82129269c12af1e6046aec9a6826a13"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.369.tar.gz"
      sha256 "b323e0e6534d2683a1650770e663155f4da85aa2a1e58499b8ceae02ad394e8a"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
