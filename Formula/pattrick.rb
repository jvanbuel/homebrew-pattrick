# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Pattrick < Formula
  desc "CLI for managing Personal Access Tokens (PAT) in Azure DevOps"
  homepage "https://github.com/jvanbuel/pattrick"
  url "https://github.com/jvanbuel/pattrick/releases/download/v0.1.0/pattrick-mac.tar.gz"
  sha256 "81ad5e2ba5d86e8a85072ca7b759330714adb7fba76c75b8aa0add27ab24bd6c"
  version "0.1.0"

  def install
    bin.install "pattrick"
  end
end
