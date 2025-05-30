class KoboldcppNocuda < Formula
  desc "KoboldCpp (Linux NO CUDA): AI text-generation for GGML & GGUF models"
  homepage "https://github.com/LostRuins/koboldcpp"
  version "1.92.1"
  license "AGPL-3.0-only"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/LostRuins/koboldcpp/releases/download/v1.92.1/koboldcpp-linux-x64-nocuda"
    sha256 "00e4c42979d6bbcf481bcc9332e1d09690489e8b59647dfd397da931b08042a8"
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