class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.362"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.362.tar.gz"
      sha256 "e7d55332e4eea7d2b1f931961cc049c2da3a4d135ff2849f758a85542988c7ce"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.362.tar.gz"
      sha256 "d6c5094f7b80ee4931da544964f45d556298be3efc3051df2d9b715343e43b32"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
