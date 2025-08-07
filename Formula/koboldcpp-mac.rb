class KoboldcppMac < Formula
  desc "KoboldCpp (macOS ARM64): AI text-generation for GGML & GGUF models"
  homepage "https://github.com/LostRuins/koboldcpp"
  version "1.97"
  license "AGPL-3.0-only"

  url "https://github.com/LostRuins/koboldcpp/releases/download/v1.97/koboldcpp-mac-arm64"
  sha256 "a6249003d087c4bddfe739e3c1cf9b130c5ac582effb1fc726a2b1aa063131b0"

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
