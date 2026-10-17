class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.406"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.406.tar.gz"
      sha256 "8126d37aff22f7a9d27a5bb4182e83d70f632cb3bffcab858defd2cae1dfc977"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.406.tar.gz"
      sha256 "9adeeb86bda4bc52ceb4ce7d7b76703caaea7cd7ab8b9c33fceee788dabe3189"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
