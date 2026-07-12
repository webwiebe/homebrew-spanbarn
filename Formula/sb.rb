class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.269"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.269.tar.gz"
      sha256 "30b1182344c586c933884e2c3fb932060a1e15308ca69ef6c977301e1ea3a2cc"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.269.tar.gz"
      sha256 "24b5b7ff787e2837f9b1d11a830aa1014a51cb5a50e42666e297839c3828ec31"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
