require "formula"

class Tmuxify < Formula
  homepage "https://github.com/tonchis/tmuxify"
  url "https://github.com/tonchis/tmuxify/archive/v1.2.0.tar.gz"
  sha1 "a99f2844146d69053dc3b01940c69a28a5e34468"

  depends_on "tmux"

  def install
    bin.install "bin/tmuxify" => "tmuxify"
  end
end
