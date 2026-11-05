class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.504"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.504.tar.gz"
      sha256 "24e4d0992be0173be6d1a4277739eed58c283fe1fcf0dae0c88babbbb96c9235"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.504.tar.gz"
      sha256 "dbe95daed16356487c04fed88273432ded840200a75f9933a5eed12195b2e9ea"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
