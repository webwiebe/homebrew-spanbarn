class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.262"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.262.tar.gz"
      sha256 "57d944d2b46348180881fdd6f1a8fc9efc6f3e4b99eb6c82036bbc84fec9cf88"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.262.tar.gz"
      sha256 "b6e94ccf4606bacd44aa75e30ddfe8b7178fec3a6696d60277527d27b03a21f0"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
