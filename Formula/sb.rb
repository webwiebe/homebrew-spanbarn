class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.570"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.570.tar.gz"
      sha256 "05df2dfba7506899ae7bb6437ac49f259a92faccaa1f3cf3e033848329aaa42f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.570.tar.gz"
      sha256 "eabc87db4212438042c353f5151d5f4312e1ec8315f8e386fc4905a5ad4b1afb"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
