class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.488"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.488.tar.gz"
      sha256 "89df0cb5b6044a2e3895a66a65cfde8f3187b61a64abb33a1b7c20f3cf35568d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.488.tar.gz"
      sha256 "d98e0e64c5def276ecd348d0ccc1de88c13b47abe65b523efe885b4e6e2febd8"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
