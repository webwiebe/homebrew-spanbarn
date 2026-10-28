class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.459"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.459.tar.gz"
      sha256 "0096d08559e94339f4827de449bdcbf6152e1616fcff08f3b145323b75df1920"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.459.tar.gz"
      sha256 "bcc2ca5022038ca86fba63a507db636bde65aff2a97c1f8511aa81405e3715a6"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
