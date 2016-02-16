require "formula"

class Tmuxify < Formula
  homepage "https://github.com/tonchis/tmuxify"
  url "https://github.com/tonchis/tmuxify/archive/v1.2.1.tar.gz"
  sha1 "ab4e9361e7ece0e9f55896588d596b40da268d82"

  depends_on "tmux"

  def install
    bin.install "bin/tmuxify" => "tmuxify"
  end
end
