require "formula"

class GitPullRequest < Formula
  homepage "https://github.com/tonchis/git-pull-request"
  url "https://github.com/tonchis/git-pull-request/archive/v1.1.0.tar.gz"
  sha1 "484b3ec4a2c6b9e90e6a5307c772aceb2eebabc6"

  def install
    bin.install "bin/git-pull-request" => "git-pull-request"
  end

  test do
    `git init`
    `git remote add origin git@github.com:tonchis/homebrew-goodies`

    gpr_fake_run = `git-pull-request -f -t "hi"`
    assert_match "https://api.github.com/repos/tonchis/homebrew-goodies/pulls", gpr_fake_run
    assert_match '{"head": "master","base": "master","title": "hi"}', gpr_fake_run
  end
end

