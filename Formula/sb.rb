class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.512"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.512.tar.gz"
      sha256 "48ff91f50d2d371c33e7947df5325146d26a22826185b2164094bf79e2b87dea"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.512.tar.gz"
      sha256 "6f709f3a041313bbf40b901df7c9a9bff32f3d84525dce57cafad6d9b15c470e"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
