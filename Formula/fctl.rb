# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fctl < Formula
  desc ""
  homepage "https://formance.com"
  version "2.0.0-beta.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/formancehq/stack/releases/download/v2.0.0-beta.8/fctl_darwin-arm64.tar.gz"
      sha256 "ec3c57b24a4bac9a2c9c940e6b0d422dfb65997fa64b93cd6d0751e99c7221d7"

      def install
        bin.install "fctl"
        bash_completion.install "completions/fctl.bash" => "fctl"
        zsh_completion.install "completions/fctl.zsh" => "_fctl"
        fish_completion.install "completions/fctl.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/formancehq/stack/releases/download/v2.0.0-beta.8/fctl_darwin-amd64.tar.gz"
      sha256 "6156248c790260b806966e694b73ec892ea7d99f9bdbc3eb5dc6d02a66da6b54"

      def install
        bin.install "fctl"
        bash_completion.install "completions/fctl.bash" => "fctl"
        zsh_completion.install "completions/fctl.zsh" => "_fctl"
        fish_completion.install "completions/fctl.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/formancehq/stack/releases/download/v2.0.0-beta.8/fctl_linux-arm64.tar.gz"
      sha256 "7a64b1e5119d39ec2c2d1311ad247c21dba1527ba488fd2197e7bdd50c73bade"

      def install
        bin.install "fctl"
        bash_completion.install "completions/fctl.bash" => "fctl"
        zsh_completion.install "completions/fctl.zsh" => "_fctl"
        fish_completion.install "completions/fctl.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/formancehq/stack/releases/download/v2.0.0-beta.8/fctl_linux-amd64.tar.gz"
      sha256 "15ace864a545db60d837206aa387374d1517ec4243f6d7b550387ded1fb2ce91"

      def install
        bin.install "fctl"
        bash_completion.install "completions/fctl.bash" => "fctl"
        zsh_completion.install "completions/fctl.zsh" => "_fctl"
        fish_completion.install "completions/fctl.fish"
      end
    end
  end

  test do
    system "#{bin}/fctl version"
  end
end
