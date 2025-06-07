class KoboldcppCuda1150 < Formula
  desc "KoboldCpp (Linux, CUDA 11.5): AI text-generation for GGML & GGUF models"
  homepage "https://github.com/LostRuins/koboldcpp"
  version "1.93"
  license "AGPL-3.0-only"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/LostRuins/koboldcpp/releases/download/v1.93/koboldcpp-linux-x64-cuda1150"
    sha256 "b03adf80bbd3007c12215cd8cd08d20437a84f5c0f1ce36608e51f2f28c03b9d"
  else
    odie "This formula is for Linux x86_64 only."
  end

  def install
    bin.install "koboldcpp-linux-x64-cuda1150" => "koboldcpp"
  end

  test do
    system "#{bin}/koboldcpp", "--help"
  end

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end
end