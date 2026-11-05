class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.507"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.507.tar.gz"
      sha256 "9a93df92e2e6cb2aa714e2b84cddf66a20444275b136c573c099fb53b6f70867"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.507.tar.gz"
      sha256 "084cc5943adce7b189c5a727919a82c59e775630f3d02929a8ced03c4d2b26f1"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
