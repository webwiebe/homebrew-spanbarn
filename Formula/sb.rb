class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.501"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.501.tar.gz"
      sha256 "45ab6cac12cb8c5716b88081d241ba2c423506e355c36dad35accbae3ed3e740"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.501.tar.gz"
      sha256 "f1c48d70fcdb911f1d53ac991321db453e80d0a03495efb8e7132ddba5fd625a"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
