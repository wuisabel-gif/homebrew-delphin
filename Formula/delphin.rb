class Delphin < Formula
  desc "Duplex companion for AI agent CLIs: keep talking while it thinks"
  homepage "https://github.com/wuisabel-gif/Delphin"
  url "https://github.com/wuisabel-gif/Delphin/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "1627d19ecadc2c78b99d90eee3a93c6ec8bd639bc6dee827c6fddfab210cef08"
  license "MIT"
  head "https://github.com/wuisabel-gif/Delphin.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "duplex companion", shell_output("#{bin}/delphin --help")
  end
end
