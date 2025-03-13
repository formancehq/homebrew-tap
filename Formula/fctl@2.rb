# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FctlAT2 < Formula
  desc ""
  homepage "https://formance.com"
  version "2.2.0"

  on_macos do
    on_intel do
      url "https://github.com/formancehq/fctl/releases/download/v2.2.0/fctl_darwin-amd64.tar.gz"
      sha256 "e78d56b25664d35f4c2633a18df013f3cfaaf33ea1955c0f5bc6944b5a10e83f"

      def install
        bin.install "fctl"
        bash_completion.install "completions/fctl.bash" => "fctl"
        zsh_completion.install "completions/fctl.zsh" => "_fctl"
        fish_completion.install "completions/fctl.fish"
      end
    end
    on_arm do
      url "https://github.com/formancehq/fctl/releases/download/v2.2.0/fctl_darwin-arm64.tar.gz"
      sha256 "fd7b467e54bb77b63d38074e3c4020b5b05a5aa9d8fe53deb68fef02d8f71eda"

      def install
        bin.install "fctl"
        bash_completion.install "completions/fctl.bash" => "fctl"
        zsh_completion.install "completions/fctl.zsh" => "_fctl"
        fish_completion.install "completions/fctl.fish"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/formancehq/fctl/releases/download/v2.2.0/fctl_linux-amd64.tar.gz"
        sha256 "b74f2e5dd8f88528ed7522e4a8c42d5d17d8feb821b6a41329572d6a6fed73a0"

        def install
          bin.install "fctl"
          bash_completion.install "completions/fctl.bash" => "fctl"
          zsh_completion.install "completions/fctl.zsh" => "_fctl"
          fish_completion.install "completions/fctl.fish"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/formancehq/fctl/releases/download/v2.2.0/fctl_linux-arm64.tar.gz"
        sha256 "82272fe45411e780442366a1c8439da6231865b0a6d539b5e9e126ed0338ef18"

        def install
          bin.install "fctl"
          bash_completion.install "completions/fctl.bash" => "fctl"
          zsh_completion.install "completions/fctl.zsh" => "_fctl"
          fish_completion.install "completions/fctl.fish"
        end
      end
    end
  end

  test do
    system "#{bin}/fctl version"
  end
end
