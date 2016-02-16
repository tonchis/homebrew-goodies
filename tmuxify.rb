require "formula"

class Tmuxify < Formula
  homepage "https://github.com/tonchis/tmuxify"
  url "https://github.com/tonchis/tmuxify/archive/v1.2.1.tar.gz"
  sha1 "b7d33be3cae2ba5f4d5c1dcca411abaa47d1a998"

  depends_on "tmux"

  def install
    bin.install "bin/tmuxify" => "tmuxify"
  end
end
