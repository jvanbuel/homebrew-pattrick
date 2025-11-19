class Pattrick < Formula
  desc "Pattrick command line interface"
  homepage "https://www.github.com/jvanbuel/pattrick"
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jvanbuel/pattrick/releases/download/v0.3.8/pattrick-x86_64-apple-darwin.tar.gz"
    sha256 "b93a010731f5bfb048a73fc7e7538b8841a4371e63c0494970e8d25a1ac5aaa8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jvanbuel/pattrick/releases/download/v0.3.8/pattrick-aarch64-apple-darwin.tar.gz"
    sha256 "6614530083bfdfa78acfa33eaa2e87f8bbab2a9adc1bf3744b9fafd3abb179ea"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jvanbuel/pattrick/releases/download/v0.3.8/pattrick-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "da4104ba8edb409bcbc7e16a64953963a81f743883f024d077b490bdee9ba701"
  end
  version "0.3.8"

  def install
    bin.install Dir.glob("**/pattrick")
  end

  test do
    system "#{bin}/pattrick", "--help"
  end
end