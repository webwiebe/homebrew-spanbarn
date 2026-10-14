class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.377"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.377.tar.gz"
      sha256 "b98f3500c4d02d06344b45f7518ba19b3b3c03d4f6ff90d72ac85fe9db1e2b68"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.377.tar.gz"
      sha256 "e8f79772c48d7c1cb0f98f18550277bd12b83b3b577b8dc465b699600c6a95ea"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
