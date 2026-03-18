# typed: true
# frozen_string_literal: true

class Epubst < Formula
  desc "Compilateur Markdown vers ePub3, outil en ligne de commande .NET"
  homepage "https://github.com/amaurybennett/epubst"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/amaurybennett/epubst/releases/download/v1.0.1/epubst-osx-arm64.tar.gz"
      sha256 "a297180b3d1974a0c00a47efc0bd21608e1b10bf1e1838f3b77097292d083605"
    end
  end

  def install
    bin.install "epubst"
  end

  test do
    system "#{bin}/epubst", "--help"
  end
end
