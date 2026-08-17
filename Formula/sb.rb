class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.286"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.286.tar.gz"
      sha256 "f385ddf2c68537b8e1c3a37490a36039a70f7efe7a58070ad616391f5329e497"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.286.tar.gz"
      sha256 "ac423938ff485aba8975e9a4f67e9a5f5868eab7be3888a27e2f34823b51d40d"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
