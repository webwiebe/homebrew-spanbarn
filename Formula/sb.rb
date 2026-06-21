class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.244"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.244.tar.gz"
      sha256 "7b39097223cabf1f111c7e85caa7ba7ae758f0211073707f6086b52ae7aeb2c9"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.244.tar.gz"
      sha256 "7d8a4ea5a1ed49e4a36bf320511442c8ef5183eaf0961b3e39be4cc35a14f1b5"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
