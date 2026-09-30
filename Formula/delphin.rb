class Delphin < Formula
  desc "Duplex companion for AI agent CLIs: keep talking while it thinks"
  homepage "https://github.com/wuisabel-gif/Delphin"
  url "https://github.com/wuisabel-gif/Delphin/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "14b2eb859603732594c5568906afa9def3be5d04bb212b2f911de2edc6e0cd74"
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
