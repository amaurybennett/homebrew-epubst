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
      sha256 "cd0d4577a4b932218666d62b83f2353c1e39f51ef8354ddd8625c6a3fd106a91"
    end
  end

  def install
    bin.install "epubst"
  end

  test do
    system "#{bin}/epubst", "--help"
  end
end
