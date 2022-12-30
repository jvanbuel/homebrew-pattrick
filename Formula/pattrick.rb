# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Pattrick < Formula
  desc "CLI for managing Personal Access Tokens (PAT) in Azure DevOps"
  homepage "https://github.com/jvanbuel/pattrick"
  url "https://github.com/jvanbuel/pattrick/releases/download/v0.3.0/pattrick-x86_64-apple-darwin.tar.gz"
  sha256 "99fdf815e36cfec4a135fd2c72bcdb26255c0195d94c9ab627f6cca104a1b1e1"
  version "0.3.0"

  def install
    bin.install "pattrick"
  end
end
