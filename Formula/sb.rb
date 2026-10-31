class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.498"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.498.tar.gz"
      sha256 "688b81364b410ea39fc0f46d23ab393fac879308b0c022c9c701f7413d23a6fb"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.498.tar.gz"
      sha256 "8c61059aecb724d852427a497064cf54d01b4e66bfc010a715e71cd64d3ade4b"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
