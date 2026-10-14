class Delphin < Formula
  desc "Duplex companion for AI agent CLIs: keep talking while it thinks"
  homepage "https://github.com/wuisabel-gif/Delphin"
  url "https://github.com/wuisabel-gif/Delphin/archive/refs/tags/v0.5.2.tar.gz"
  sha256 "35d7bd7af0adb904a8734976ab9426e7fc3b9cb2dfeb87b8d4658ccefd53515d"
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
