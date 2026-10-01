class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.306"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.306.tar.gz"
      sha256 "8552b1ba2381cd65e721d5924b57a38090e3970a2d5555b63c17bac2a2eb8318"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.306.tar.gz"
      sha256 "26a16e67cd8deaac2692cd2951928e50a0c0f3e98febdb57ab9b6f984b05bf6d"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
