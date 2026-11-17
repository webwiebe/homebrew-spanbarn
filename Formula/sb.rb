class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.537"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.537.tar.gz"
      sha256 "cf0e83e1df3fa134c94b2723e488710b6d5b441f2761bcd482568eeacda0efa5"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.537.tar.gz"
      sha256 "3900af851e01ac2b450e7f59d31ec2793659f50240502df768698a4024c2289e"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
