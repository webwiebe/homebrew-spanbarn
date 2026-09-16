class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.299"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.299.tar.gz"
      sha256 "7587343b45c7cdcab519cbba4049149b4c1c9a28952ee092b7a5f7956164bf14"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.299.tar.gz"
      sha256 "8c8524b51bf032860c99bd3736dc1da74579d5e19e287646e17eb8397b6132d1"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
