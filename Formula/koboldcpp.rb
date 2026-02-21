class Koboldcpp < Formula
  desc "KoboldCpp: AI text-generation for GGML & GGUF models (CUDA 12.4, modern PCs)"
  homepage "https://github.com/LostRuins/koboldcpp"
  version "1.108.2"
  license "AGPL-3.0-only"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/LostRuins/koboldcpp/releases/download/v1.108.2/koboldcpp-linux-x64"
    sha256 "8fc0c2d6be9fa3e05fe6efc23251bdd396b73a1cce1ea987d2b9a78069e2ddfd"
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