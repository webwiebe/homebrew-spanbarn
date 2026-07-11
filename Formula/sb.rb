class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.264"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.264.tar.gz"
      sha256 "6c8171cc5b7d59027bc95cabce98adf89b7401fa1f803b3e2eeb956beaf80de3"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.264.tar.gz"
      sha256 "a46e363a760b52a395963c016041cd5b21f138a3c26ab8a5e05ed64752eee930"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
