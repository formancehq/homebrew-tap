# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class LedgerAT2 < Formula
  desc ""
  homepage "https://formance.com"
  version "2.2.27"

  on_macos do
    on_intel do
      url "https://github.com/formancehq/ledger/releases/download/v2.2.27/ledger_darwin-amd64.tar.gz"
      sha256 "84910f7ef74e0a643442372ef764186eae5d4b706dc273e7787a67167b809646"

      def install
        bin.install "ledger"
      end
    end
    on_arm do
      url "https://github.com/formancehq/ledger/releases/download/v2.2.27/ledger_darwin-arm64.tar.gz"
      sha256 "941d8b396b4f52e1afdef47c13508aedd128ff7d01a94d853f7eb3525e29814a"

      def install
        bin.install "ledger"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/formancehq/ledger/releases/download/v2.2.27/ledger_linux-amd64.tar.gz"
        sha256 "b0da667562d370f270a040ae263fc4ddbb46be707da052be971c6d9bdbe1630d"

        def install
          bin.install "ledger"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/formancehq/ledger/releases/download/v2.2.27/ledger_linux-arm64.tar.gz"
        sha256 "5c3222c939cbe56efb24d362227b9087af47776753c2de51c5b67e30b5c37f3f"

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
