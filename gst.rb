require "formula"

class Gst < Formula
  homepage "https://github.com/tonchis/gst"
  url "https://github.com/tonchis/gst/archive/v1.0.0.tar.gz"
  sha1 "d1def3c02c6cbac45fa70691cb832bc3e6537204"

  def install
    bin.install "bin/gst" => "gst"
  end

  test do
    `gst init`

    assert File.exists?(".gs")

    assert_match /\.gs/, `gst in gem env path`
  end
end
