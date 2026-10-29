class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.482"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.482.tar.gz"
      sha256 "d12c9b128e3aa5b50ffbba9620a5f54647e6087d2399e8d9aadb55001b388bf2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.482.tar.gz"
      sha256 "ef90c963ae09cedca10ad6ea5a5421abea038f29a2e572ea8e1001ee43430c24"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
