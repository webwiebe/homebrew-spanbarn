class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.453"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.453.tar.gz"
      sha256 "915bcbd981bf7849b44c25c92e3492c0af510a3736f73f93e5ae0c1937573eba"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.453.tar.gz"
      sha256 "3e8be728d19c85383add7b6f3c173c7c1c557d2729fba5d60f5fc31ed57e5686"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
