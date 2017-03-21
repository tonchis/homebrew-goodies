require "formula"

class GitPullRequest < Formula
  homepage "https://github.com/tonchis/git-pull-request"
  url "https://github.com/tonchis/git-pull-request/archive/v1.1.0.tar.gz"
  sha256 "810f8e02975c8d81a2887bb879d32d8b84d65637933a3ab0af50aff189f351f0"

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

