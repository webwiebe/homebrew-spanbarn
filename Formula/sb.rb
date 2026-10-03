class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.324"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.324.tar.gz"
      sha256 "db903816b544b2b70730a73834b3cce51577a643a5c245ffdf4214d42e31b672"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.324.tar.gz"
      sha256 "27c53756752c360e5952c2ebdd778cfd6b0a951dd8c501173981aa80fcb3c2ac"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
