# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fctl < Formula
  desc ""
  homepage "https://formance.com"
  version "2.0.18"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/formancehq/stack/releases/download/v2.0.18/fctl_darwin-arm64.tar.gz"
      sha256 "3b1e4a37107ddead64237fccc14d43888e1a118f9177018c5c0691554cff8ed2"

      def install
        bin.install "fctl"
        bash_completion.install "completions/fctl.bash" => "fctl"
        zsh_completion.install "completions/fctl.zsh" => "_fctl"
        fish_completion.install "completions/fctl.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/formancehq/stack/releases/download/v2.0.18/fctl_darwin-amd64.tar.gz"
      sha256 "b9310a3cea195d3946af8bfc09be84ee261ed060ec676e28ee925813923849c2"

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
      url "https://github.com/formancehq/stack/releases/download/v2.0.18/fctl_linux-arm64.tar.gz"
      sha256 "e183f4143c0df3d6c6ad074d6e1df683fa311116ce62d9f2cce5143c30a7e6b5"

      def install
        bin.install "fctl"
        bash_completion.install "completions/fctl.bash" => "fctl"
        zsh_completion.install "completions/fctl.zsh" => "_fctl"
        fish_completion.install "completions/fctl.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/formancehq/stack/releases/download/v2.0.18/fctl_linux-amd64.tar.gz"
      sha256 "91fec2912d11a028b5d86f9fe6595e7a26f531813a6141e06b055d2c227b9d96"

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
