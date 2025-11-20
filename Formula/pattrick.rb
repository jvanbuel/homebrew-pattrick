class Pattrick < Formula
  desc "Pattrick command line interface"
  homepage "https://www.github.com/jvanbuel/pattrick"
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jvanbuel/pattrick/releases/download/v0.4.0/pattrick-x86_64-apple-darwin.tar.gz"
    sha256 "80902c6a5a6744ae32c46cb118b2eb9f0f9161511c87ea9a819ff7a2ee698d94"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jvanbuel/pattrick/releases/download/v0.4.0/pattrick-aarch64-apple-darwin.tar.gz"
    sha256 "357b2e0600a02bc49b03ec95cc2866ff824772f368f8f1aaa3fdf51e7e6141a6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jvanbuel/pattrick/releases/download/v0.4.0/pattrick-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5712eeabcbe98d406c53cb9cc7dd465c2d47cbf8be0b30a963a47199be744784"
  end
  version "0.4.0"

  def install
    bin.install Dir.glob("**/pattrick")
  end

  test do
    system "#{bin}/pattrick", "--help"
  end
end