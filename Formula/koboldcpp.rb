class Koboldcpp < Formula
  desc "KoboldCpp: AI text-generation for GGML & GGUF models (CUDA 12.4, modern PCs)"
  homepage "https://github.com/LostRuins/koboldcpp"
  version "1.96.2"
  license "AGPL-3.0-only"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/LostRuins/koboldcpp/releases/download/v1.96.2/koboldcpp-linux-x64"
    sha256 "95469ef739107bd5c29d4990d8ce77ca9e7bf42b5f370e6530071865712a7d85"
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