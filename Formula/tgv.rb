class Tgv < Formula
    desc "Terminal Genome Viewer"
    homepage "https://github.com/zeqianli/tgv/"
    version "0.3.0"

    if OS.mac?
        url "https://github.com/zeqianli/tgv/releases/download/v#{version}/tgv-aarch64-apple-darwin.tar.gz"
        sha256 "d333b82ee7d21ebfc43b6cdab23fcfd610507faf92eef31d3fe982c4b593a7be"
    elsif OS.linux?
        url "https://github.com/zeqianli/tgv/releases/download/v#{version}/tgv-x86_64-linux-musl.tar.gz"
        sha256 "d2d8c2dbaa97fd87e94e9da2a6f0cc1f8fbb0e494c58805cd551986aeef430d4"
    end
  
    def install
      bin.install "tgv"
    end

    test do
        system "#{bin}/tgv", "--version"
    end
  end
