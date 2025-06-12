class KoboldcppMac < Formula
  desc "KoboldCpp (macOS ARM64): AI text-generation for GGML & GGUF models"
  homepage "https://github.com/LostRuins/koboldcpp"
  version "1.93.2"
  license "AGPL-3.0-only"

  url "https://github.com/LostRuins/koboldcpp/releases/download/v1.93.2/koboldcpp-mac-arm64"
  sha256 "d2b3c9d44b8149a7d9445fd945a03414a43d9f975c3960b14e0171a6081f356b"

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
