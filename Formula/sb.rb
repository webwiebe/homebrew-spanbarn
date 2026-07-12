class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.270"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.270.tar.gz"
      sha256 "8657aeacf7481a3bcf6a45e6c3b1b931295df2e096052bd4ddf3f0a5ceed23bb"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.270.tar.gz"
      sha256 "c040441b674aeaa17502fdc679f8b4ee889934beaad62f6742204f8b843cd73c"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
