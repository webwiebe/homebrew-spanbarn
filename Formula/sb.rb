class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.257"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.257.tar.gz"
      sha256 "1ae1615a3f715914c990e6462efa0e22b10b8931b4616b9bd1f36b51a1fd4ddf"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.257.tar.gz"
      sha256 "b95dc8199e1bb3a33c2b4c7ac707968a018f55bd1e89600f665ed4e856902247"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
