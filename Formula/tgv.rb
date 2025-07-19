# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Tgv < Formula
    desc "Terminal Genome Viewer"
    homepage "https://github.com/zeqianli/tgv/"
    version "0.0.6"

    if OS.mac?
        url "https://github.com/zeqianli/tgv/releases/download/v#{version}/tgv-aarch64-apple-darwin.tar.gz"
        sha256 "b31f5f622c5e9a20749dae3dc67e434ad061c7e1df458b2740cbfea4a3a4b275"
    elsif OS.linux?
        url "https://github.com/zeqianli/tgv/releases/download/v#{version}/tgv-x86_64-linux-musl.tar.gz"
        sha256 "df3ed9992b51f1b9b89bf508cf47b0e4327d62937af8918e8ad564f7c0eea621"
    end
  
    def install
      bin.install "tgv"
    end

    test do
        system "#{bin}/tgv", "--version"
    end
  end
