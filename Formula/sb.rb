class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.531"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.531.tar.gz"
      sha256 "d9c3516c473fbb87d5e95a51f50f3ca294948a132c8d51b0a61ef7c338e61c2c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.531.tar.gz"
      sha256 "171fbb615357df614b1725e5e92492fdfd5d1fd06edea0a6cae7b8e8b8fc30ff"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
