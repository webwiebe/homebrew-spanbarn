class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.371"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.371.tar.gz"
      sha256 "0ab502ac2fb8b2807bea77887b833e81cdb09fb6010c41a6994c4677d61a23d1"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.371.tar.gz"
      sha256 "91ab1d8a3bde3a7b87bb23d1af4e5693eddf44842bee5e190a6ed6f547d78789"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
