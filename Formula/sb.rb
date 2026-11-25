class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.576"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.576.tar.gz"
      sha256 "3edfb31cfa3f66cbd395c93b7fd78bcdc01596997485a1c05a68d2b073084bc1"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.576.tar.gz"
      sha256 "fb6b3a8dde150bc90bb5368449d0096300938f5da42835fe3d92ae2ed3f1aa69"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
