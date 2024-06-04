# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fctl < Formula
  desc ""
  homepage "https://formance.com"
  version "2.0.0-rc.32"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/formancehq/stack/releases/download/v2.0.0-rc.32/fctl_darwin-arm64.tar.gz"
      sha256 "e243924a042fb723b3fcf95dc81f0387cde4dcf5ab617a0024315d2162b40352"

      def install
        bin.install "fctl"
        bash_completion.install "completions/fctl.bash" => "fctl"
        zsh_completion.install "completions/fctl.zsh" => "_fctl"
        fish_completion.install "completions/fctl.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/formancehq/stack/releases/download/v2.0.0-rc.32/fctl_darwin-amd64.tar.gz"
      sha256 "f14706790c097a2ba00ba4c621192c15167a2e1aa0c90a6ce785cd4718f6ee7a"

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
      url "https://github.com/formancehq/stack/releases/download/v2.0.0-rc.32/fctl_linux-arm64.tar.gz"
      sha256 "26951b3a697d7e0999bcb83a0ff063f6ca913b37d0ac2ef1ae00afa0671cfa2a"

      def install
        bin.install "fctl"
        bash_completion.install "completions/fctl.bash" => "fctl"
        zsh_completion.install "completions/fctl.zsh" => "_fctl"
        fish_completion.install "completions/fctl.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/formancehq/stack/releases/download/v2.0.0-rc.32/fctl_linux-amd64.tar.gz"
      sha256 "4014bdfd5adfa37eb08534c1e4f6a81d40efdeb3c66a664c420bd1754cda96be"

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
