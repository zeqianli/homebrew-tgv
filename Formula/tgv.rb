# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Tgv < Formula
    desc "Terminal Genome Viewer"
    homepage "https://github.com/zeqianli/tgv/"
    version "0.0.3"

    if Os.mac?
        url "https://github.com/zeqianli/tgv/releases/download/v0.0.3/tgv-aarch64-apple-darwin.tar.gz"
        sha256 "bcff2b32e00013a1c6b0899a3edb7b6b4a842a0a60869d30c8a1fe6e52ddd6d5"
    elsif Os.linux?
        url "https://github.com/zeqianli/tgv/releases/download/v0.0.3/tgv-x86_64-linux-musl.tar.gz"
        sha256 "4658009718b5155793e49b219ae17ca49b1c1cf8a0e0d4ccc12f81ef33860489"
    end
  
    def install
      bin.install "tgv"
    end

    test do
        system "#{bin}/tgv", "--version"
    end
  end