class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.372"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.372.tar.gz"
      sha256 "2566a7c8e88fb5e9f2acfa396d993091a7e77cb1000f991e3adf64c36a51c582"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.372.tar.gz"
      sha256 "b79ffcd0f2c1041e0dae18c1e85ab052668dae59c7aefc819787fa6f044985c6"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
