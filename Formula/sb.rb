class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.538"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.538.tar.gz"
      sha256 "fdb63b4d8cbaad27ab315b36cf4acfbe4ae02e9c2228b7526b4bc611f1d5bbbd"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.538.tar.gz"
      sha256 "9056d5fe473fbece0771a4017208de4bad874599ff64926ba4b09072fc7b05f8"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
