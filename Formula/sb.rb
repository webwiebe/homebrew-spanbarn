class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.563"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.563.tar.gz"
      sha256 "a3a8fbfa9252a417fcb12b80a8ef6628d38b45d570aa9e34661c176696d988e0"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.563.tar.gz"
      sha256 "f10e462fd557975af385840a4d2236f53d5fe48839103fef71aed2027d3940aa"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
