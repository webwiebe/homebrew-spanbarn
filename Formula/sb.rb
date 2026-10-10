class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.357"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.357.tar.gz"
      sha256 "6ec0b5b49161cb91d2b553b705b14dcb46c52959fba5ddac5b89e1f4a1223726"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.357.tar.gz"
      sha256 "6350fde1faac9e3aa5422cf8f738f681c684c0587f6b5a06a56bdd8fd6a5e3fe"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
