# typed: true
# frozen_string_literal: true

class Epubst < Formula
  desc "Compilateur Markdown vers ePub3, outil en ligne de commande .NET"
  homepage "https://github.com/amaurybennett/epubst"
  license "MIT"
  version "1.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/amaurybennett/epubst/releases/download/v1.0.1/epubst-osx-arm64.tar.gz"
      sha256 "4005239a92a0c771e11761118a60431e07b66dd27b330c77a746c2abe0ac413e"
    end
  end

  def install
    bin.install "epubst"
  end

  test do
    system "#{bin}/epubst", "--help"
  end
end
