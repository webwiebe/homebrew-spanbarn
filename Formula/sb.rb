class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.565"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.565.tar.gz"
      sha256 "d7e9ce7d2ebc49c8717f5dbfbc40dec05c49aa639416ec66afd1db7e9e742d33"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.565.tar.gz"
      sha256 "40076d53be851537b056953ee878965a185f48b4d316a5e127f132a758f38f69"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
