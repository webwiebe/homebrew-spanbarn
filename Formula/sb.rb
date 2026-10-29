class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.476"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.476.tar.gz"
      sha256 "b8a69263b54c9b4909fd1a337625dd05f3dac359ecc77617b7d719245d260986"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.476.tar.gz"
      sha256 "597f3c3b44b73293a397790c216d09cd1eb1341a41b2feba66320ba6e41bef80"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
