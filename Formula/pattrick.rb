class Pattrick < Formula
  desc "Pattrick command line interface"
  homepage "https://www.github.com/jvanbuel/pattrick"
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jvanbuel/pattrick/releases/download/v0.6.0/pattrick-x86_64-apple-darwin.tar.gz"
    sha256 "cceec5ad997e754013a18ed0e6a2d4a54bce542dcf1655a94aecdcc53d0aeec0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jvanbuel/pattrick/releases/download/v0.6.0/pattrick-aarch64-apple-darwin.tar.gz"
    sha256 "a8c0da44d6c2683a87bb9e10327ee6970b0200fa56ff5438c08e730b627acb86"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jvanbuel/pattrick/releases/download/v0.6.0/pattrick-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "41a948fc3418ffad09b26cc219e9c3b562c37872f0ec0a0332e666d7e07853cc"
  end
  version "0.6.0"

  def install
    bin.install Dir.glob("**/pattrick")
  end

  test do
    system "#{bin}/pattrick", "--help"
  end
end