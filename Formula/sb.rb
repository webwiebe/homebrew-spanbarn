class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.413"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.413.tar.gz"
      sha256 "883b790159f287c6a5ab5326ee284f33c85ef1be83a787eee674a93b78ebacb5"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.413.tar.gz"
      sha256 "39c4fef87d22071a26dde6c21e929b56a81ed4be29120326032d0458243cc52c"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
