class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.509"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.509.tar.gz"
      sha256 "f444f62bc0711ce5e8b7423f2274846a646584f48f42f8873d4f29133194df9c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.509.tar.gz"
      sha256 "245a16491b2d7f72dd81dd5137050f93be0981c0f23f11b9dd251d2a2b277240"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
