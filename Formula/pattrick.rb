class Pattrick < Formula
  desc "Pattrick command line interface"
  homepage "https://www.github.com/jvanbuel/pattrick"
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jvanbuel/pattrick/releases/download/v0.3.4/pattrick-x86_64-apple-darwin.tar.gz"
    sha256 "061702a7bfb38d0512b7c6f65cd2e83760e2af0dbafff88075e4f0ffed04726e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jvanbuel/pattrick/releases/download/v0.3.4/pattrick-aarch64-apple-darwin.tar.gz"
    sha256 "ebc31f1385ff608a7243d997b6af25e368a5bab7a89fd442fad303c8208dae42"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jvanbuel/pattrick/releases/download/v0.3.4/pattrick-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4eec8db94b19948f0d8c68a48efffef5a3ae3b9a86d87403ad011251f7d40517"
  end
  version "0.3.4"

  def install
    bin.install Dir.glob("**/pattrick")
  end

  test do
    system "#{bin}/pattrick", "--help"
  end
end