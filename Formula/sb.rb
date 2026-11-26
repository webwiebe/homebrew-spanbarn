class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.578"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.578.tar.gz"
      sha256 "33c354681d210f1abdd28b0486311966792e9d4d30d7f5bcbc82aa480d67bc3e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.578.tar.gz"
      sha256 "b8aa93a1bf8807a8c5f7687999cb205ce79e2844b5e546876aa8668b6bac8b7c"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
