class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.363"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.363.tar.gz"
      sha256 "7261d79dad04d21b59f5743744d4c0edcac3bdd6365dc98c6736c21daa6bee54"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.363.tar.gz"
      sha256 "256d16de9e81e952e98ce03098b9de3e8fbb2cac7100f19a54966612ef38711d"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
