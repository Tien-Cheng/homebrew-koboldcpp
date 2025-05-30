class KoboldcppCuda1150 < Formula
  desc "KoboldCpp (Linux, CUDA 11.5): AI text-generation for GGML & GGUF models"
  homepage "https://github.com/LostRuins/koboldcpp"
  version "1.92.1"
  license "AGPL-3.0-only"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/LostRuins/koboldcpp/releases/download/v1.92.1/koboldcpp-linux-x64-cuda1150"
    sha256 "2574c1b270164f277038dc5b1cb651447751440c1d0cd925eabf54544f01be54"
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