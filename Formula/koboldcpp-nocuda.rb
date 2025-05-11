class KoboldcppNocuda < Formula
  desc "KoboldCpp (Linux NO CUDA): AI text-generation for GGML & GGUF models"
  homepage "https://github.com/LostRuins/koboldcpp"
  version "1.91"
  license "AGPL-3.0-only"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/LostRuins/koboldcpp/releases/download/v#{version}/koboldcpp-linux-x64-nocuda"
    sha256 "358e4216abd13be59d1bd87a805fc5d88ca44d9ef8de47d7ee87518943454949"
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