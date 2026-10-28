class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.466"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.466.tar.gz"
      sha256 "37d2857879adc31e2040def1b0fed98ecd3a2629ff63b8aafe378ac63019e299"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.466.tar.gz"
      sha256 "58e6e009c6558dde9316b7eaed200ae8e463fa8c036f29c471e166f573989b5f"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
