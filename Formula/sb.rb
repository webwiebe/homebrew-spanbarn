class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.332"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.332.tar.gz"
      sha256 "7ffabfa78d9d9982966e72c531ca2e721d0f9d1d090aed42b3f5e1f9f25e0860"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.332.tar.gz"
      sha256 "2fdd3bd3204c36cbc5b10c19e92feed983d5a46ae0f251a7beab6913d89eab86"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
