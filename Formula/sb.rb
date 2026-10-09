class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.353"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.353.tar.gz"
      sha256 "8bbe72077fc01fd094f7556bd6c712e49162ff63865c8758f3ae10b3c294ee9c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.353.tar.gz"
      sha256 "73cfe45e0a313dcfae61153b6a6a970e7eb3846abe2983e64ede815980c6a392"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
