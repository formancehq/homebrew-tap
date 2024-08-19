# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fctl < Formula
  desc ""
  homepage "https://formance.com"
  version "2.0.11"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/formancehq/stack/releases/download/v2.0.11/fctl_darwin-amd64.tar.gz"
      sha256 "4b0a2c063872d1075b42b85adfbdf980837983f7f29571e97f11b64b7cd4fbce"

      def install
        bin.install "fctl"
        bash_completion.install "completions/fctl.bash" => "fctl"
        zsh_completion.install "completions/fctl.zsh" => "_fctl"
        fish_completion.install "completions/fctl.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/formancehq/stack/releases/download/v2.0.11/fctl_darwin-arm64.tar.gz"
      sha256 "ddb5114c6152633a5c7cb6a95801f5096471b065a4224131de712515fffd315f"

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
      url "https://github.com/formancehq/stack/releases/download/v2.0.11/fctl_linux-arm64.tar.gz"
      sha256 "e49279d355a69f328b265fee1e2b2d944d75b366dfc4b5550f136da2cd7ce7b8"

      def install
        bin.install "fctl"
        bash_completion.install "completions/fctl.bash" => "fctl"
        zsh_completion.install "completions/fctl.zsh" => "_fctl"
        fish_completion.install "completions/fctl.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/formancehq/stack/releases/download/v2.0.11/fctl_linux-amd64.tar.gz"
      sha256 "6537dc797f775e01d10469fd388a2ec2ebeada4b4a5f4c429b74c7f4309a6416"

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
