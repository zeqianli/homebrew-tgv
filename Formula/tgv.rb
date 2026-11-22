class Tgv < Formula
    desc "Terminal Genome Viewer"
    homepage "https://github.com/zeqianli/tgv/"
    version "0.5.0"

    if OS.mac?
        url "https://github.com/zeqianli/tgv/releases/download/v#{version}/tgv-aarch64-apple-darwin.tar.gz"
        sha256 "f9e4a9a6b4332a9b6042f71bf4a2b5a0d6d6bba2f0a4a9e94d140807d9854578"

        resource "tgv-gui" do
            url "https://github.com/zeqianli/tgv/releases/download/v#{version}/tgv-gui-aarch64-apple-darwin.tar.gz"
            sha256 "211d7e79b1527e924303ec53df2b5672d9ab3d1b5e4e2f3003f2ba3a518fb778"
        end
    elsif OS.linux?
        url "https://github.com/zeqianli/tgv/releases/download/v#{version}/tgv-x86_64-linux-musl.tar.gz"
        sha256 "51841a721d89c2299731490aea85b931229e71fd7ef5c1331ec8a230039d5fca"

        resource "tgv-gui" do
            url "https://github.com/zeqianli/tgv/releases/download/v#{version}/tgv-gui-x86_64-linux-gnu.tar.gz"
            sha256 "21351190cc81ff480dbeacbbc62ed21ada7753251e9f44815835805d5d856345"
        end
    end
  
    def install
      bin.install "tgv"
      resource("tgv-gui").stage { bin.install "tgv-gui" }
    end

    def caveats
        on_linux do
            <<~EOS
              tgv-gui needs Wayland or X11, a Vulkan-capable graphics driver, and the
              fontconfig, freetype, and xkbcommon libraries from your system. It also
              uses the Liberation Mono font (fonts-liberation on Debian and Ubuntu).
            EOS
        end
    end

    test do
        system "#{bin}/tgv", "--version"
        system "#{bin}/tgv-gui", "--version"
    end
  end
