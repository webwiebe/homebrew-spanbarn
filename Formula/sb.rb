class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.493"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.493.tar.gz"
      sha256 "eb2d9a5ce710eaef33e39672b42dadc8932e9bb0e9ab31d7d779e8a4d12fadea"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.493.tar.gz"
      sha256 "2b3dac32f44d8b571fde4bc20aa7a4f9e0873caca42cc6aec75980250ffb2bf3"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
