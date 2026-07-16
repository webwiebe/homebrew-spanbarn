class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.277"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.277.tar.gz"
      sha256 "d74fcc3431422cbe9b213829e062a6f4936b844d1ae8d232ecab82eb6b92915a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.277.tar.gz"
      sha256 "23d83140fe1e842df0ec577389ba5a6666eebcca13e3f6a5520b7ad917ce4db0"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
