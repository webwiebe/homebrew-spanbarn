class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.255"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.255.tar.gz"
      sha256 "f5b6b6c895d669ac685d33e93af2232e7c722aced8296b2ed011c31ae1a20af3"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.255.tar.gz"
      sha256 "b749301442c7323e8257ed80edea7b2e9b96ec0dc3f5816d6dcbe7b93409c723"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
