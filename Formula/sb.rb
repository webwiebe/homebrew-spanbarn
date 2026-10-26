class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.436"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.436.tar.gz"
      sha256 "f7ee9e960e4d9aabe024c29a2692e86b004df5c106d19222ca7e030a74b2e019"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.436.tar.gz"
      sha256 "267d50a69735274ecc64ac81aa1bb5992f9df07feefa807ffe84b5569cd42b22"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
