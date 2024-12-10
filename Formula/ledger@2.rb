# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class LedgerAT2 < Formula
  desc ""
  homepage "https://formance.com"
  version "2.2.0-beta.2"

  on_macos do
    on_intel do
      url "https://github.com/formancehq/ledger/releases/download/v2.2.0-beta.2/ledger_darwin-amd64.tar.gz"
      sha256 "657640d1a8e04631df175da2340be215e28c04a471bbf4c6682d8f06a22d42b5"

      def install
        bin.install "ledger"
      end
    end
    on_arm do
      url "https://github.com/formancehq/ledger/releases/download/v2.2.0-beta.2/ledger_darwin-arm64.tar.gz"
      sha256 "92562298eba0f3160fb973e2d3f5bba1f13bff9c87c4f921d47a29dbd5977d0a"

      def install
        bin.install "ledger"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/formancehq/ledger/releases/download/v2.2.0-beta.2/ledger_linux-amd64.tar.gz"
        sha256 "8b972ec6c328e5aafc4ff35612a07365a9231b46b050f8cede5c21ace62af610"

        def install
          bin.install "ledger"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/formancehq/ledger/releases/download/v2.2.0-beta.2/ledger_linux-arm64.tar.gz"
        sha256 "41c56f0621ec596dc2632790ead08058b17d889f62d72406795de02a34a11f10"

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
