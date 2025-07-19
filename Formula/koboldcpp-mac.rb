class KoboldcppMac < Formula
  desc "KoboldCpp (macOS ARM64): AI text-generation for GGML & GGUF models"
  homepage "https://github.com/LostRuins/koboldcpp"
  version "1.96.1"
  license "AGPL-3.0-only"

  url "https://github.com/LostRuins/koboldcpp/releases/download/v1.96.1/koboldcpp-mac-arm64"
  sha256 "02de3c50923b9943ff99942405dacfbbde82fccc70da46b34ca503d3dd5461b1"

  on_macos do
    if Hardware::CPU.arm?
      def install
        bin.install "koboldcpp-mac-arm64" => "koboldcpp"
      end
    end
  end

  test do
    system "#{bin}/koboldcpp", "--help"
  end

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end
end
