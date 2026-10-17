class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.404"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.404.tar.gz"
      sha256 "d3e2a7272c7f289fc3044712f154908f4041302148316d7fe82aa42f95d2a236"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.404.tar.gz"
      sha256 "99b9bb0f7b86bbf3efc50b6ceb8e1195b69bd39fdef54325ceb27eaead3b1c40"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
