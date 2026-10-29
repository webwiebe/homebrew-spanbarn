class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.469"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.469.tar.gz"
      sha256 "c599a6f22b099a124519c5086fec5491cd2d7d150d4fdc1d5daf47c8cb4b0c1e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.469.tar.gz"
      sha256 "dd00a0b179c8641d6c75b43d2954c759f8c868e21c36e66e7ee81b11a970a051"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
