class KoboldcppMac < Formula
  desc "KoboldCpp (macOS ARM64): AI text-generation for GGML & GGUF models"
  homepage "https://github.com/LostRuins/koboldcpp"
  version "1.99"
  license "AGPL-3.0-only"

  url "https://github.com/LostRuins/koboldcpp/releases/download/v1.99/koboldcpp-mac-arm64"
  sha256 "6f115885c8eded2c48088aaa627b74be2c1dd07d3a121b2357721d054c49af8d"

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
