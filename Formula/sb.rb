class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.477"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.477.tar.gz"
      sha256 "7ad55cfcb7218674bd97e2f6daed15d58587e89daa871006828ca78ab4602a8a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.477.tar.gz"
      sha256 "0cfb0ca9efa1210c1a2f68de3800e66f4ae2f4b85ce7e5e29fd6f1767cbd3b66"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
