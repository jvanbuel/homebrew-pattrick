class Pattrick < Formula
  desc "Pattrick command line interface"
  homepage "https://www.github.com/jvanbuel/pattrick"
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jvanbuel/pattrick/releases/download/v0.3.6/pattrick-x86_64-apple-darwin.tar.gz"
    sha256 "2796cbe680b95ffdedae2bc0610726a2108b2aff2a893874f3b52382e4f77830"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jvanbuel/pattrick/releases/download/v0.3.6/pattrick-aarch64-apple-darwin.tar.gz"
    sha256 "8aa6bc20efd5c350cc6289172adf16337b6246462030d6508aa00dbdeee206e8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jvanbuel/pattrick/releases/download/v0.3.6/pattrick-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ff933781900b98895c569aaa3ba156b5cab73c799fd5d275a6dca8d20ce63062"
  end
  version "0.3.6"

  def install
    bin.install Dir.glob("**/pattrick")
  end

  test do
    system "#{bin}/pattrick", "--help"
  end
end