class Tgv < Formula
    desc "Terminal Genome Viewer"
    homepage "https://github.com/zeqianli/tgv/"
    version "0.1.0"

    if OS.mac?
        url "https://github.com/zeqianli/tgv/releases/download/v#{version}/tgv-aarch64-apple-darwin.tar.gz"
        sha256 "57d9c0854a9b235fa22d40620ef46039f18a991e5807de0ed4f8e5e8eb6752d9"
    elsif OS.linux?
        url "https://github.com/zeqianli/tgv/releases/download/v#{version}/tgv-x86_64-linux-musl.tar.gz"
        sha256 "b8063f6346b674010170bb6f4df2c7be04b97e65fdcf79e0d38b7efb2d599b0b"
    end
  
    def install
      bin.install "tgv"
    end

    test do
        system "#{bin}/tgv", "--version"
    end
  end
