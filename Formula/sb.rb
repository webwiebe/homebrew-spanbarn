class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.322"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.322.tar.gz"
      sha256 "922d1cd8efa18bf051f631890cbbdf3f74815ff0efed0e47cb15cd442f2fa29c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.322.tar.gz"
      sha256 "3eba6724142f775e69bb22e067a7e09e0b4cc4652e06f0933ea49d7202676efc"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
