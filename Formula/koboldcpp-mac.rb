class KoboldcppMac < Formula
  desc "KoboldCpp (macOS ARM64): AI text-generation for GGML & GGUF models"
  homepage "https://github.com/LostRuins/koboldcpp"
  version "1.93.1"
  license "AGPL-3.0-only"

  url "https://github.com/LostRuins/koboldcpp/releases/download/v1.93.1/koboldcpp-mac-arm64"
  sha256 "b9a6044e8b8b7b3d4d7aae4bd63235f9215d0ed22a753646f48c16400287a0d4"

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
