class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.294"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.294.tar.gz"
      sha256 "70b7509cf9f62ad81e54eaa56858f3ff6f0fb4adc88fb4a68d37532d4152d28f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.294.tar.gz"
      sha256 "c699c3e453e497693a41f09511ee1b6257519fadc2da551ba69568786e0557ea"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
