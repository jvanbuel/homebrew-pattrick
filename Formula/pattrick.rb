# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Pattrick < Formula
  desc "CLI for managing Personal Access Tokens (PAT) in Azure DevOps"
  homepage "https://github.com/jvanbuel/pattrick"
  url "https://github.com/jvanbuel/pattrick/releases/download/v0.3.0/pattrick-x86_64-apple-darwin.tar.gz"
  sha256 "7590926e6be5635f7d69b7e79b8c17650ec862c8a2407759422329af05a721bd"
  version "0.3.0"

  def install
    bin.install "pattrick"
  end
end
