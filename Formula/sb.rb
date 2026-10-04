class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.342"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.342.tar.gz"
      sha256 "661df20c97e586450245ee98878a9bdc7384d9fa862d8797170bcf31b79675fe"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.342.tar.gz"
      sha256 "3e1e0e6874afba6acfd525ccf54e5021781aa9cc0bf8ba5209637dfd597ff389"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
