class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.543"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.543.tar.gz"
      sha256 "f2a3ae0c00b7061bdde78e38d15747b6d9bac1eb278f0452a4a38f22550c97a9"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.543.tar.gz"
      sha256 "7dcc911823fc4fd6163547e874acdac6bc74824e54af84525f8c0abd650d30a2"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
