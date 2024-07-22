# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "./lib/private_strategy.rb"
class AwsSsoProfile < Formula
  desc "AWS tools for managing terminal profiles"
  homepage "https://github.com/jacobfg/aws-sso-profile"
  version "0.0.9"
  license "Apache-2.0"
  depends_on :macos

  on_intel do
    url "https://github.com/jacobfg/aws-sso-profile/releases/download/0.0.9/aws-sso-profile_0.0.9_darwin_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "6fe975b5d5cb78e16b5f7aa4a4e6fb3b70fcc1941b156f779db7c97fe9d54a32"

    def install
      # bin.install "aws-sso-profile"
      # bash_completion.install "aws-sso-profile.bash" => "aws-sso-profile"
      # zsh_completion.install "aws-sso-profile.zsh" => "_aws-sso-profile"
      # fish_completion.install "aws-sso-profile.fish"

      bin.install "aws-sso-profile" => "aws-sso-profile"
      output = Utils.popen_read("SHELL=bash PATH=#{bin}:#{PATH} aws-sso-profile completion bash")
      (bash_completion/"aws-sso-profile").write output
      output = Utils.popen_read("SHELL=zsh PATH=#{bin}:#{PATH} aws-sso-profile completion zsh")
      (zsh_completion/"_aws-sso-profile").write output
      prefix.install_metafiles

      # man1.install "manpages/aws-sso-profile.1.gz"
    end
  end
  on_arm do
    url "https://github.com/jacobfg/aws-sso-profile/releases/download/0.0.9/aws-sso-profile_0.0.9_darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "bfe926cf73def98be32b25e9c4fd9e8e5597877413d6798ec1e751323030f966"

    def install
      # bin.install "aws-sso-profile"
      # bash_completion.install "aws-sso-profile.bash" => "aws-sso-profile"
      # zsh_completion.install "aws-sso-profile.zsh" => "_aws-sso-profile"
      # fish_completion.install "aws-sso-profile.fish"

      bin.install "aws-sso-profile" => "aws-sso-profile"
      output = Utils.popen_read("SHELL=bash PATH=#{bin}:#{PATH} aws-sso-profile completion bash")
      (bash_completion/"aws-sso-profile").write output
      output = Utils.popen_read("SHELL=zsh PATH=#{bin}:#{PATH} aws-sso-profile completion zsh")
      (zsh_completion/"_aws-sso-profile").write output
      prefix.install_metafiles

      # man1.install "manpages/aws-sso-profile.1.gz"
    end
  end

  test do
    system "#{bin}/aws-sso-profile version"
    assert_match "aws-sso-profile: 0.0.9 (f47e8ad)", shell_output("#{bin}/aws-sso-profile version")
  end
end
