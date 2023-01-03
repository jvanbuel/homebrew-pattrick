class Pattrick < Formula
  desc "Pattrick command line interface"
  homepage "https://www.github.com/jvanbuel/pattrick"
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jvanbuel/pattrick/releases/download/v0.3.3/pattrick-x86_64-apple-darwin.tar.gz"
    sha256 "db83b9c87cad611fc6a1c2b31fc05f6f0c5d16177f3fcc01aff633cfb2ad4892"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jvanbuel/pattrick/releases/download/v0.3.3/pattrick-aarch64-apple-darwin.tar.gz"
    sha256 "9d4149c142d45128a47b6d3c2708d20789377361b7060a791d942fc76f1afbb7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jvanbuel/pattrick/releases/download/v0.3.3/pattrick-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ef0aba3d7d410bcb0d54047994dbdf39b2813cefeb99cc5f0c68b6789c70c5d2"
  end
  version "0.3.3"

  def install
    bin.install Dir.glob("**/pattrick")
  end

  test do
    system "#{bin}/pattrick", "--help"
  end
end