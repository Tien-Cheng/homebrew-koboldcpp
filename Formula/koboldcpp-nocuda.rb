class KoboldcppNocuda < Formula
  desc "KoboldCpp (Linux NO CUDA): AI text-generation for GGML & GGUF models"
  homepage "https://github.com/LostRuins/koboldcpp"
  version "1.93"
  license "AGPL-3.0-only"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/LostRuins/koboldcpp/releases/download/v1.93/koboldcpp-linux-x64-nocuda"
    sha256 "f598661e6572eab3ac24ed0a6f9d71d607167d6168103aa349b51c0ddcc0e89a"
  else
    odie "This formula is for Linux x86_64 only."
  end

  def install
    bin.install "koboldcpp-linux-x64-nocuda" => "koboldcpp"
  end

  test do
    system "#{bin}/koboldcpp", "--help"
  end

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end
end