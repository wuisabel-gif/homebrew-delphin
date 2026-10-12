class Delphin < Formula
  desc "Duplex companion for AI agent CLIs: keep talking while it thinks"
  homepage "https://github.com/wuisabel-gif/Delphin"
  url "https://github.com/wuisabel-gif/Delphin/archive/refs/tags/v0.5.1.tar.gz"
  sha256 "d3f62fedca472b91d2ad00b618492181305faa8a35011954b9ff3f650a165859"
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
