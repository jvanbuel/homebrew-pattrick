class Pattrick < Formula
  desc "Pattrick command line interface"
  homepage "https://www.github.com/jvanbuel/pattrick"
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jvanbuel/pattrick/releases/download/v0.7.0/pattrick-x86_64-apple-darwin.tar.gz"
    sha256 "d4268c6cc04a1527525899b406bd6d9a6f39523ab8bcee4708c6eb6c58f33b5b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jvanbuel/pattrick/releases/download/v0.7.0/pattrick-aarch64-apple-darwin.tar.gz"
    sha256 "3e77fdee31ac71ecb13efb364ea585bfa19a4a6d0bb229c5144a776e1ec4e394"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jvanbuel/pattrick/releases/download/v0.7.0/pattrick-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "967e538256a449160b3f2759bae0d5d082ca2665079827e9faf2155f6d865d97"
  end
  version "0.7.0"

  def install
    bin.install Dir.glob("**/pattrick")
  end

  test do
    system "#{bin}/pattrick", "--help"
  end
end