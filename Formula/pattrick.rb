# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Pattrick < Formula
  desc "CLI for managing Personal Access Tokens (PAT) in Azure DevOps"
  homepage "https://github.com/jvanbuel/pattrick"
  url "https://github.com/jvanbuel/pattrick/releases/download/v0.3.3/pattrick-x86_64-apple-darwin.tar.gz"
  sha256 "5203152973240bf073000f80499d1d3a1c8fe82b0d8b9979673073f1b1412a39"
  version "0.3.3"

  def install
    bin.install "pattrick"
  end
end
