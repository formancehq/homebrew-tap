# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fctl < Formula
  desc ""
  homepage "https://formance.com"
  version "2.0.0-beta.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/formancehq/stack/releases/download/v2.0.0-beta.6/fctl_darwin-arm64.tar.gz"
      sha256 "fc8c2b6196aec92110ede7904f2ff8091e6d80ed147df3e21ed7219edea3fdf6"

      def install
        bin.install "fctl"
        bash_completion.install "completions/fctl.bash" => "fctl"
        zsh_completion.install "completions/fctl.zsh" => "_fctl"
        fish_completion.install "completions/fctl.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/formancehq/stack/releases/download/v2.0.0-beta.6/fctl_darwin-amd64.tar.gz"
      sha256 "651db70823620743cad6843a59c4e7466c93d6f1a4130c81cf6006a28ed2c72f"

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
      url "https://github.com/formancehq/stack/releases/download/v2.0.0-beta.6/fctl_linux-arm64.tar.gz"
      sha256 "bb0acc9a801f956c53613afbcc3ce70a8756c0452492fe2b1c0ca4e203196ff2"

      def install
        bin.install "fctl"
        bash_completion.install "completions/fctl.bash" => "fctl"
        zsh_completion.install "completions/fctl.zsh" => "_fctl"
        fish_completion.install "completions/fctl.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/formancehq/stack/releases/download/v2.0.0-beta.6/fctl_linux-amd64.tar.gz"
      sha256 "1119f6d917b446c56eb692593e9bcfd41574c97f583dccbcca2cda846f7b98f0"

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
