class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.331"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.331.tar.gz"
      sha256 "f30cb301cb1b4f907c13dea7d5737a9baaf84895da7ef0966331fd33a0f1e50b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.331.tar.gz"
      sha256 "3d95f7a03b5c7c8e0de3dc6e9d5bfb5caab21341a3b18bffbfed58ab819b826d"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
