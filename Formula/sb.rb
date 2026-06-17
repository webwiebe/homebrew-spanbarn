class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.239"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.239.tar.gz"
      sha256 "6ae29000b3f02cff9b835fb6c78b8c751ec8321ac5fd9f97e18596455c54c8df"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.239.tar.gz"
      sha256 "2558dad05fff85eb611fc163a8bb6729b52a913a1a997c2be01008ce42f31830"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
