require "formula"

class Tmuxify < Formula
  homepage "https://github.com/tonchis/tmuxify"
  url "https://github.com/tonchis/tmuxify/archive/v1.0.0.tar.gz"
  sha1 "9c534420e3330f10e1f26099c4dceca83b381f0d"

  depends_on "tmux"

  def install
    bin.install "bin/tmuxify" => "tmuxify"
  end
end
