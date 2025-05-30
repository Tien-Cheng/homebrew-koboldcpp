class KoboldcppCuda1210 < Formula
  desc "KoboldCpp (Linux, CUDA 12.1): AI text-generation for GGML & GGUF models"
  homepage "https://github.com/LostRuins/koboldcpp"
  version "1.92.1"
  license "AGPL-3.0-only"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/LostRuins/koboldcpp/releases/download/v%VERSION%/koboldcpp-linux-x64-cuda1210"
    sha256 "60328bd43f2245cfb96af2c467be4d845b67406e8632ed2c871ddc9c4e8eaf47"
  else
    odie "This formula is for Linux x86_64 only."
  end

  def install
    bin.install "koboldcpp-linux-x64-cuda1210" => "koboldcpp"
  end

  test do
    system "#{bin}/koboldcpp", "--help"
  end

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end
end