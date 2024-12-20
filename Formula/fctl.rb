# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fctl < Formula
  desc ""
  homepage "https://formance.com"
  version "2.0.23"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/formancehq/stack/releases/download/v2.0.23/fctl_darwin-arm64.tar.gz"
      sha256 "b5a0799e98eee74495e033d93e5751db24be57eeacb119a9335ffd8e1e20dffc"

      def install
        bin.install "fctl"
        bash_completion.install "completions/fctl.bash" => "fctl"
        zsh_completion.install "completions/fctl.zsh" => "_fctl"
        fish_completion.install "completions/fctl.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/formancehq/stack/releases/download/v2.0.23/fctl_darwin-amd64.tar.gz"
      sha256 "dafd10f4e4c9109dc9532de1b99d4a6fb3d7d7c251027d9ee3ff0986da4b0f1c"

      def install
        bin.install "fctl"
        bash_completion.install "completions/fctl.bash" => "fctl"
        zsh_completion.install "completions/fctl.zsh" => "_fctl"
        fish_completion.install "completions/fctl.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/formancehq/stack/releases/download/v2.0.23/fctl_linux-amd64.tar.gz"
      sha256 "93a815f92c3bae95a6b8ca98c82ce3733f40c36a3b9f205e2ea22af4e10d0046"

      def install
        bin.install "fctl"
        bash_completion.install "completions/fctl.bash" => "fctl"
        zsh_completion.install "completions/fctl.zsh" => "_fctl"
        fish_completion.install "completions/fctl.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/formancehq/stack/releases/download/v2.0.23/fctl_linux-arm64.tar.gz"
      sha256 "fc6c0468a9b6375587542cf221f32e0d32e599e8c3c2aeec20e23fea595d50f5"

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
