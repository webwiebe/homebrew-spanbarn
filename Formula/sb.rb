class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.485"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.485.tar.gz"
      sha256 "51914852b79a594e7abb1ff0c8084b0efdc4206abdc6069fdd4411f21f2bf0d8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.485.tar.gz"
      sha256 "ceb6fd7f1ba96839bb23510df73430b8d90efa1abf23dd3097db5b613d6827c1"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
