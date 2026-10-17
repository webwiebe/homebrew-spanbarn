class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.403"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.403.tar.gz"
      sha256 "ec914b3e165c67d20fc0958df4f0056be72867a4843b48e6aa41ffd234b34bab"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.403.tar.gz"
      sha256 "91122fafa12406a8e5b065ab5319787a4e0fdcb5209387971e3f21aff169f745"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
