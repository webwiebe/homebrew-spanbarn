class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.526"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.526.tar.gz"
      sha256 "6310f6b9400ebeb04a0fe1011d140622e2a538b3e71fda3f7e8cdc267e4e2c5f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.526.tar.gz"
      sha256 "146e128fc3d64da84fb7fa0c4d399f8a6f94415f4f15734399500af817d6687e"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
