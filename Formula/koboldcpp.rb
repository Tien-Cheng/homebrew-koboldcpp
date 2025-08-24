class Koboldcpp < Formula
  desc "KoboldCpp: AI text-generation for GGML & GGUF models (CUDA 12.4, modern PCs)"
  homepage "https://github.com/LostRuins/koboldcpp"
  version "1.98"
  license "AGPL-3.0-only"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/LostRuins/koboldcpp/releases/download/v1.98/koboldcpp-linux-x64"
    sha256 "6596ff21d7ee09a22bfa4b494f0329b4041c346e282c8ef00455c6739d17c9e5"
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