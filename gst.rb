require "formula"

class Gst < Formula
  homepage "https://github.com/tonchis/gst"
  url "https://github.com/tonchis/gst/archive/v1.0.0.tar.gz"
  sha256 "317c997230f976ff9acf3b3e26ff1c1d0fca39ea8bc6b92da28ff85ca1d5a8d1"

  def install
    bin.install "bin/gst" => "gst"
  end

  test do
    `gst init`

    assert File.exists?(".gs")

    assert_match /\.gs/, `gst in gem env path`
  end
end
