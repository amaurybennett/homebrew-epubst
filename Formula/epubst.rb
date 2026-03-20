# typed: true
# frozen_string_literal: true

class Epubst < Formula
  desc "Compilateur Markdown vers ePub3, outil en ligne de commande .NET"
  homepage "https://github.com/amaurybennett/epubst"
  license "MIT"
  version "1.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/amaurybennett/epubst/releases/download/v1.0.2/epubst-osx-arm64.tar.gz"
      sha256 "741058296dffff475fd613dfad1f171a8ae52ec83dad7a38bfc07088447196c6"
    end
  end

  def install
    bin.install "epubst"
  end

  test do
    system "#{bin}/epubst", "--help"
  end
end
