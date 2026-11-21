class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.569"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.569.tar.gz"
      sha256 "b25bc241778f4a7b07dc9768f697203ca0abab260e89520f24a99e275a85b4cc"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.569.tar.gz"
      sha256 "a65b52c81f9cf413a764510d4f7cfed3cd6f868d5eac384ad5a538e5b8791265"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
