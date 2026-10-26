class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.441"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.441.tar.gz"
      sha256 "1cc67a36f6de4eecaaa3fcfdce91045ea5e3c843b038767be87374ce6fbf4821"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.441.tar.gz"
      sha256 "f7275afb6579bb0cb57df511dd773acf6fbc82ab5849a198b237e7af4994e9ef"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
