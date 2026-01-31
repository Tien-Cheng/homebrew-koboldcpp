class Koboldcpp < Formula
  desc "KoboldCpp: AI text-generation for GGML & GGUF models (CUDA 12.4, modern PCs)"
  homepage "https://github.com/LostRuins/koboldcpp"
  version "1.107"
  license "AGPL-3.0-only"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/LostRuins/koboldcpp/releases/download/v1.107/koboldcpp-linux-x64"
    sha256 "43dc6294b4d10c9a1c6ab54a5d9b301173cffae50d4b82dd0da1bd59a3cb3f9e"
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