class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.430"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.430.tar.gz"
      sha256 "cfdb70c5aaf468abdf853178013a40816dd1cbf07aefa3d642a92286926b5cf4"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.430.tar.gz"
      sha256 "2b0d4b1d1d5390251a7c40044b40f8858f26b8c620fd5e764299525ac114694f"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
