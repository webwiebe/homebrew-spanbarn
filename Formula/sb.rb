class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.546"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.546.tar.gz"
      sha256 "4ae987001a97b484782bdbae1d5b1d45325372ba56f50780a34c79323f37e96e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.546.tar.gz"
      sha256 "c232a060d9ecb947e20bff1ffdcb7ef1e012f09fc9b148efd237b0af5062bb73"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
