# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fctl < Formula
  desc ""
  homepage "https://formance.com"
  version "2.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/formancehq/stack/releases/download/v2.0.2/fctl_darwin-arm64.tar.gz"
      sha256 "95b3cd9318c348d628a76ddccb2d45128414c6a6d4201e79324dcf76306469be"

      def install
        bin.install "fctl"
        bash_completion.install "completions/fctl.bash" => "fctl"
        zsh_completion.install "completions/fctl.zsh" => "_fctl"
        fish_completion.install "completions/fctl.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/formancehq/stack/releases/download/v2.0.2/fctl_darwin-amd64.tar.gz"
      sha256 "fe8fed5b8954c5bb23230ae6cc18bbaa5ff5369cc82e7b3e5d9d8f2b475af756"

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
      url "https://github.com/formancehq/stack/releases/download/v2.0.2/fctl_linux-arm64.tar.gz"
      sha256 "dc8a40c74f45df52b75d49d3cbc53272fa9c637f1e8857f0567e65e353f59edd"

      def install
        bin.install "fctl"
        bash_completion.install "completions/fctl.bash" => "fctl"
        zsh_completion.install "completions/fctl.zsh" => "_fctl"
        fish_completion.install "completions/fctl.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/formancehq/stack/releases/download/v2.0.2/fctl_linux-amd64.tar.gz"
      sha256 "c528906db0811e48e01e2d1f5884ff9d6319a9f7450a5da99c7767742d73652f"

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
