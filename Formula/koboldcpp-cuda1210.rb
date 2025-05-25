class KoboldcppCuda1210 < Formula
  desc "KoboldCpp (Linux, CUDA 12.1): AI text-generation for GGML & GGUF models"
  homepage "https://github.com/LostRuins/koboldcpp"
  version "1.91"
  license "AGPL-3.0-only"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/LostRuins/koboldcpp/releases/download/v1.91/koboldcpp-linux-x64-cuda1210"
    sha256 "488f57ae643eafde6beeaa5b3ae202326279176791b11863b06ecabffd375b2f"
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