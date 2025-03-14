# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ledger < Formula
  desc ""
  homepage "https://formance.com"
  version "2.2.15"

  on_macos do
    on_intel do
      url "https://github.com/formancehq/ledger/releases/download/v2.2.15/ledger_darwin-amd64.tar.gz"
      sha256 "f2ad1202995fc9a21617442287069d235c7b48d5be5059dedb9188138c7fd929"

      def install
        bin.install "ledger"
      end
    end
    on_arm do
      url "https://github.com/formancehq/ledger/releases/download/v2.2.15/ledger_darwin-arm64.tar.gz"
      sha256 "96cefe8a76631cdffd207e36bab883634a720918f17ed433ff04f9e971855875"

      def install
        bin.install "ledger"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/formancehq/ledger/releases/download/v2.2.15/ledger_linux-amd64.tar.gz"
        sha256 "6bc51787cb357dfae9bd4bb56bae25096acaeb380adc0fff66de1aa72ee5ffa4"

        def install
          bin.install "ledger"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/formancehq/ledger/releases/download/v2.2.15/ledger_linux-arm64.tar.gz"
        sha256 "ae6eb4517ba4515ae7da8db23d3613aa02c1d9be69429f89b8c9e0418e0ee7f9"

        def install
          bin.install "ledger"
        end
      end
    end
  end

  test do
    system "#{bin}/ledger version"
  end
end
