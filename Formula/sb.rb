class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.375"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.375.tar.gz"
      sha256 "13b9f32e3bca8fe10c95967b485ffedb8322c0cc8f06abe8a7d2124f4d900903"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.375.tar.gz"
      sha256 "3f553e7803d1fb16cbd99fa4e0f6ca602609b71de57496ce668123487e269389"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
