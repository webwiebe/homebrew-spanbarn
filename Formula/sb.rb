class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.280"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.280.tar.gz"
      sha256 "9f3538c3ed7dedfefd477ee8c501f0a73cec6671cf2f95171e610d9d3540c6ac"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.280.tar.gz"
      sha256 "5ee11b8dbfe1bab695c189d6add97649cdc7b09f29924f261db59209bc0f423f"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
