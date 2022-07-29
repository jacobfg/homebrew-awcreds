# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "./lib/private_strategy.rb"
class Awscreds < Formula
  desc "AWS Tools for managing credentials"
  homepage "https://github.com/jacobfg/awscreds"
  version "0.4.15"
  license "Apache-2.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jacobfg/awscreds/releases/download/0.4.15/awscreds_0.4.15_darwin_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "228a07d3c351d5765d17f7fd56eb64874969676b3fe39d71d0edb5d96b2207c7"

      def install
        bin.install "awscreds"
        bash_completion.install "completions/awscreds.bash" => "awscreds"
        zsh_completion.install "completions/awscreds.zsh" => "_awscreds"
        fish_completion.install "completions/awscreds.fish"
        # man1.install "manpages/awscreds.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jacobfg/awscreds/releases/download/0.4.15/awscreds_0.4.15_darwin_amd64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "ff65a170a03522148380f0fb789638280e4d599da3a93df1082f2bf3f7710ddd"

      def install
        bin.install "awscreds"
        bash_completion.install "completions/awscreds.bash" => "awscreds"
        zsh_completion.install "completions/awscreds.zsh" => "_awscreds"
        fish_completion.install "completions/awscreds.fish"
        # man1.install "manpages/awscreds.1.gz"
      end
    end
  end

  test do
    system "#{bin}/awscreds version"
    # test version to ensure that version number is embedded in binary
    # somehow add os/arch in version output
    assert_match "awscreds: 0.4.15 (e0a9f7e)", shell_output("#{bin}/awscreds version")
    # assert_match "built by #{tap.user}", shell_output("#{bin}/awscreds version")
  end
end
