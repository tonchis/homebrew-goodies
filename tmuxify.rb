require "formula"

class Tmuxify < Formula
  homepage "https://gitlab.com/tonchis/tmuxify"
  url "https://gitlab.com/tonchis/tmuxify/repository/archive.tar.gz?ref=v1.2.1"
  sha256 "12a9176e5320912923039e7619966d90633a6665dcfc23189906f7b0ef0aa4ab"

  depends_on "tmux"

  def install
    bin.install "bin/tmuxify" => "tmuxify"
  end
end
