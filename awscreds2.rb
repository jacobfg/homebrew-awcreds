# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "./lib/private_strategy.rb"
class Awscreds2 < Formula
  desc "AWS Tools for managing credentials"
  homepage "https://github.com/jacobfg/awscreds2"
  version "0.0.4"
  license "Apache-2.0"
  depends_on :macos

  on_intel do
    url "https://github.com/jacobfg/awscreds2/releases/download/0.0.4/awscreds2_0.0.4_darwin_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "792ae6c66d8ea048fa8f134751e02f670408d78dbe6523dace88f5a3dab551fd"

    def install
      bin.install "awscreds"
      bash_completion.install "awscreds.bash" => "awscreds"
      zsh_completion.install "awscreds.zsh" => "_awscreds"
      fish_completion.install "awscreds.fish"
      # man1.install "manpages/awscreds.1.gz"
    end
  end
  on_arm do
    url "https://github.com/jacobfg/awscreds2/releases/download/0.0.4/awscreds2_0.0.4_darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "c14b7c01b21c1cb9e71bc6af907bc1dd84826f88d95816f4d806752f47147cdf"

    def install
      bin.install "awscreds"
      bash_completion.install "awscreds.bash" => "awscreds"
      zsh_completion.install "awscreds.zsh" => "_awscreds"
      fish_completion.install "awscreds.fish"
      # man1.install "manpages/awscreds.1.gz"
    end
  end

  test do
    system "#{bin}/awscreds version"
    assert_match "awscreds: 0.0.4 (81012da)", shell_output("#{bin}/awscreds version")
  end
end
