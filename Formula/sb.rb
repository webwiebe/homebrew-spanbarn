class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.472"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.472.tar.gz"
      sha256 "48a33e2371d7150a5baaaa4f76a970ec5e22f864b449977cfba94330b349471e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.472.tar.gz"
      sha256 "06ad89d1bc82e7c1dc5fc6a561c3669070c94d7c33c4768209faddb367473087"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
