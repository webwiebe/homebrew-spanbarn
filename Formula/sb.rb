class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.545"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.545.tar.gz"
      sha256 "3eb0f0bdcb9eb31dfe34b4c5457c79bdea0f5d699011ee2851a8c6ade17fe543"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.545.tar.gz"
      sha256 "3b03f7822f55d2ff26aa61f14b4f66d4332799d1acb8b8389591d138d9fc5c60"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
