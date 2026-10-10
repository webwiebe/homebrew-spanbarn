class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.358"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.358.tar.gz"
      sha256 "33dfc228f0d88678ff1592857d152cfe1eb9d84f24720657f4a7f1ec9156060b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.358.tar.gz"
      sha256 "877aceb673751494a4ebc7ffdf598960023cfe16694638e2dda13cf5910d15ce"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
