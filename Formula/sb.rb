class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.456"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.456.tar.gz"
      sha256 "33258d233d4ee9ecf7e9ee1b01f69e2694fe397a44a95cf915b4bc17cd2cf504"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.456.tar.gz"
      sha256 "b7325e89c7578fe7905510bfa663a0a05b4fea2eac0131466d215f8e673046e7"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
