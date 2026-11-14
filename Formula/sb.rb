class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.527"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.527.tar.gz"
      sha256 "48f051f615ffe7a9d5e87fc73426da2b8495dd703255ae21b0bcdb0755b38747"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.527.tar.gz"
      sha256 "3cec193c77fee0fcc783c90326fdc7806900853f3df96f7c7eeeaa23788dc367"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
