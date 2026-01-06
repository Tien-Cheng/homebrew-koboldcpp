class Koboldcpp < Formula
  desc "KoboldCpp: AI text-generation for GGML & GGUF models (CUDA 12.4, modern PCs)"
  homepage "https://github.com/LostRuins/koboldcpp"
  version "1.105.4"
  license "AGPL-3.0-only"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/LostRuins/koboldcpp/releases/download/v1.105.4/koboldcpp-linux-x64"
    sha256 "b7a728a5e6a6d93b5043b332f0e6959614bf44f6b1f359e8fff223c6d348f3b4"
  else
    odie "This formula is for Linux x86_64 only."
  end

  def install
    bin.install "koboldcpp-linux-x64" => "koboldcpp"
  end

  test do
    system "#{bin}/koboldcpp", "--help"
  end

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end
end