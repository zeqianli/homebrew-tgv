# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Tgv < Formula
    desc "Terminal Genome Viewer"
    homepage "https://github.com/zeqianli/tgv/"
    version "0.0.4"

    if OS.mac?
        url "https://github.com/zeqianli/tgv/releases/download/v#{version}/tgv-aarch64-apple-darwin.tar.gz"
        sha256 "9a8167985456cc3893aea80bf703fc8ced31005c8496d7aa6e6ed885ecb1ef33"
    elsif OS.linux?
        url "https://github.com/zeqianli/tgv/releases/download/v#{version}/tgv-x86_64-linux-musl.tar.gz"
        sha256 "4c7a434493ce249ed158db3e96dd93b0e1b7ea2bc7f93199def0c134cb00b526"
    end
  
    def install
      bin.install "tgv"
    end

    test do
        system "#{bin}/tgv", "--version"
    end
  end
