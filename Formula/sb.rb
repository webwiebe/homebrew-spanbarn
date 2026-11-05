class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.505"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.505.tar.gz"
      sha256 "09afe05d56606dd7bd6184752d582090fb079e5722ccfae50fac96930a3a6838"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.505.tar.gz"
      sha256 "cb1fc0cb98e76c5e03117c621c28dc476f8ce9931904b06aabdc5116b749f9bd"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
