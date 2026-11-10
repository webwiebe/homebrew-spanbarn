class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.522"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.522.tar.gz"
      sha256 "cd112c66b2e273bc11a3e0cbac91e178b2f104442f19b3529c8e499adfc9dcfe"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.522.tar.gz"
      sha256 "a50f73dd3e73d1aec5439279000bafa3c86c4e43fcec894a85af5aa3db1e4723"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
