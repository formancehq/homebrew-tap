# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FctlAT2 < Formula
  desc ""
  homepage "https://formance.com"
  version "2.1.0-beta.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/formancehq/stack/releases/download/v2.1.0-beta.3/fctl_darwin-arm64.tar.gz"
      sha256 "b0abd804f774af8b22863f43f4194072b16cdf34eb29bee840de83dbe5d32f63"

      def install
        bin.install "fctl"
        bash_completion.install "completions/fctl.bash" => "fctl"
        zsh_completion.install "completions/fctl.zsh" => "_fctl"
        fish_completion.install "completions/fctl.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/formancehq/stack/releases/download/v2.1.0-beta.3/fctl_darwin-amd64.tar.gz"
      sha256 "0181e9eff273ec42ef228b287c1713569e6f6f46cd43d86be93455dbd8608475"

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
      url "https://github.com/formancehq/stack/releases/download/v2.1.0-beta.3/fctl_linux-arm64.tar.gz"
      sha256 "9b4d7086a0ba15e8efd9d1f77f082d5e80770bdcd1a591761b4b05d86c060b9f"

      def install
        bin.install "fctl"
        bash_completion.install "completions/fctl.bash" => "fctl"
        zsh_completion.install "completions/fctl.zsh" => "_fctl"
        fish_completion.install "completions/fctl.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/formancehq/stack/releases/download/v2.1.0-beta.3/fctl_linux-amd64.tar.gz"
      sha256 "c0c6df7e8e44f6d86fd2fda645e5b0f9bf12f750d89cf149ab4078931e5587e7"

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
