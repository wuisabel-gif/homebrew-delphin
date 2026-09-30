class Delphin < Formula
  desc "Duplex companion for AI agent CLIs: keep talking while it thinks"
  homepage "https://github.com/wuisabel-gif/Delphin"
  url "https://github.com/wuisabel-gif/Delphin/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "b82c60c75411ca635ef98395f62088d14a2e15bdc8fa31a73fba8b08bc9eafa9"
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
