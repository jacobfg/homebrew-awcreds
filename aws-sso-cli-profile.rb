# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "./lib/private_strategy.rb"
class AwsSsoCliProfile < Formula
  desc "AWS tools for managing terminal profiles"
  homepage "https://github.com/jacobfg/aws-sso-cli-profile"
  version "0.0.29"
  license "Apache-2.0"
  depends_on :macos

  if Hardware::CPU.intel?
    url "https://github.com/jacobfg/aws-sso-cli-profile/releases/download/0.0.29/aws-sso-cli-profile_0.0.29_darwin_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "9cdca2aa97def99a4303b0035baecb4ef155bf75fec5146df6c866ed78c3054e"

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
  if Hardware::CPU.arm?
    url "https://github.com/jacobfg/aws-sso-cli-profile/releases/download/0.0.29/aws-sso-cli-profile_0.0.29_darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "1ebab8ec8f0b5c200b8aad4ef98c82bb4e1d5b86477c2019e5a9f88c62a523de"

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
    assert_match "aws-sso-profile: 0.0.29 (3b70559)", shell_output("#{bin}/aws-sso-profile version")
  end
end
