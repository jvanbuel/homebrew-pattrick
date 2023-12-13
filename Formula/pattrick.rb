class Pattrick < Formula
  desc "Pattrick command line interface"
  homepage "https://www.github.com/jvanbuel/pattrick"
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jvanbuel/pattrick/releases/download/v0.3.7/pattrick-x86_64-apple-darwin.tar.gz"
    sha256 "d2905652758be96903a24e6ae87580950d55391c06f04b9a262dc1cb4463714a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jvanbuel/pattrick/releases/download/v0.3.7/pattrick-aarch64-apple-darwin.tar.gz"
    sha256 "ba71063471dd77c633d58195a7baeccd97ef62ffdd76cbdf2ac225cf1ebe2840"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jvanbuel/pattrick/releases/download/v0.3.7/pattrick-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1f82cb298f01f8dd8180b074bf0487d9eb9bae48ae73e85019c951e6d50e3b34"
  end
  version "0.3.7"

  def install
    bin.install Dir.glob("**/pattrick")
  end

  test do
    system "#{bin}/pattrick", "--help"
  end
end