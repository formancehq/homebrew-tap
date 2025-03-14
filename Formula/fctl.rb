# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fctl < Formula
  desc ""
  homepage "https://formance.com"
  version "2.3.0"

  on_macos do
    on_intel do
      url "https://github.com/formancehq/fctl/releases/download/v2.3.0/fctl_darwin-amd64.tar.gz"
      sha256 "71cde75cc3759a5020a8f2e99163d16bf3e04bf7deac72ff5a269f8da5ce2eff"

      def install
        bin.install "fctl"
        bash_completion.install "completions/fctl.bash" => "fctl"
        zsh_completion.install "completions/fctl.zsh" => "_fctl"
        fish_completion.install "completions/fctl.fish"
      end
    end
    on_arm do
      url "https://github.com/formancehq/fctl/releases/download/v2.3.0/fctl_darwin-arm64.tar.gz"
      sha256 "dbf3c233c1edf78b5ef056d3d5b877003dc64a965eee048da6dce378a2339d9e"

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
        url "https://github.com/formancehq/fctl/releases/download/v2.3.0/fctl_linux-amd64.tar.gz"
        sha256 "17231068066ecb2b67e9c1d9059d913aecb7a67282c76aa4fee772948a84eaf6"

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
        url "https://github.com/formancehq/fctl/releases/download/v2.3.0/fctl_linux-arm64.tar.gz"
        sha256 "66433775849b0b3b8b7e9b890ccae706fc1288513edc524ba01054b273818163"

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
