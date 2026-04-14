class Pattrick < Formula
  desc "Pattrick command line interface"
  homepage "https://www.github.com/jvanbuel/pattrick"
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jvanbuel/pattrick/releases/download/v0.5.0/pattrick-x86_64-apple-darwin.tar.gz"
    sha256 "2dc44a0770993423ad78379db0da0f27dbcda2b487e02d7100f210bc85afec55"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jvanbuel/pattrick/releases/download/v0.5.0/pattrick-aarch64-apple-darwin.tar.gz"
    sha256 "a9db06f8a64dc5667dfe2e2927c38b647e6cfb6af63020df1925f4a281791ec7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jvanbuel/pattrick/releases/download/v0.5.0/pattrick-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "16d17c476fe20274e0e4821bbd2c77f5d898f68fe7b8cc7f023ad0d98ad5290b"
  end
  version "0.5.0"

  def install
    bin.install Dir.glob("**/pattrick")
  end

  test do
    system "#{bin}/pattrick", "--help"
  end
end