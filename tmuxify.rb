require "formula"

class Tmuxify < Formula
  homepage "https://github.com/tonchis/tmuxify"
  url "https://github.com/tonchis/tmuxify/archive/v1.1.0.tar.gz"
  sha1 "49cfc969d78c1ab01192bd06c4558978897a0b0d"

  depends_on "tmux"

  def install
    bin.install "bin/tmuxify" => "tmuxify"
  end
end
