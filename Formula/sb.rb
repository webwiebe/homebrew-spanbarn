class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.516"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.516.tar.gz"
      sha256 "65dda13b9104a80a472b9a7fc19694b92fc6305caac97013ba5d6fd162038421"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.516.tar.gz"
      sha256 "668fa68cfe6f79f88e0a8a88466d9443fc062a23c97e2c12b1949baa0cae2646"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
