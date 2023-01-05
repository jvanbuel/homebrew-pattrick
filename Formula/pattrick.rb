class Pattrick < Formula
  desc "Pattrick command line interface"
  homepage "https://www.github.com/jvanbuel/pattrick"
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jvanbuel/pattrick/releases/download/v0.3.5/pattrick-x86_64-apple-darwin.tar.gz"
    sha256 "c735c623df51dfeb10a68208dbe03b9aa07148b7b291bc8a707d1cccbbb2b833"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jvanbuel/pattrick/releases/download/v0.3.5/pattrick-aarch64-apple-darwin.tar.gz"
    sha256 "4ebf2b3de953099c356ae74dd4af25a5609f797d669eac5afdad62381d48ecb3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jvanbuel/pattrick/releases/download/v0.3.5/pattrick-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8d9dfec0b7dab781f3af65c04050ef3eb0f26e03d06a74f9bb25781a73b285cc"
  end
  version "0.3.5"

  def install
    bin.install Dir.glob("**/pattrick")
  end

  test do
    system "#{bin}/pattrick", "--help"
  end
end