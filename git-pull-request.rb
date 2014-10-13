require "formula"

class GitPullRequest < Formula
  homepage "https://github.com/tonchis/git-pull-request"
  url "https://github.com/tonchis/git-pull-request/archive/v1.0.0.tar.gz"
  sha1 "23e09f9c6f9b0362b7cb35eeffcfd4ba7a295357"

  def install
    bin.install "bin/git-pull-request" => "git-pull-request"
  end

  test do
    assert_match "https://api.github.com/repos/tonchis/homebrew-goodies/pulls", `git pull-request -f -t "hi"`
    assert_match '{"head": "master","base": "master","title": "hi"}', `git pull-request -f -t "hi"`
  end
end

