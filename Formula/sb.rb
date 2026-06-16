class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.233"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.233.tar.gz"
      sha256 "7e932b6dbd8c6f8cf72172e0f5faae32a490c2b56f47cf25d632b5e0ae5bfedf"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.233.tar.gz"
      sha256 "b998b4684724c9455a5ac5ea1aa386261ac34fbe34b8ed92a3337b90475314d0"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
