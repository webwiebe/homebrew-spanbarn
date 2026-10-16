class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.389"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.389.tar.gz"
      sha256 "67f6a512de6017a58301b7b98bac06364d3c8c402bc8343d26ea6c70a95b5637"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.389.tar.gz"
      sha256 "6958ba6873bf175f03885406fe73f9463c149c1ac4c2ce81dfcf79428abacf31"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
