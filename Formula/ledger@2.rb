# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class LedgerAT2 < Formula
  desc ""
  homepage "https://formance.com"
  version "2.0.18"
  depends_on :linux

  on_intel do
    if Hardware::CPU.is_64_bit?
      url "https://github.com/formancehq/ledger/releases/download/v2.0.18/ledger_linux-amd64.tar.gz"
      sha256 "ec337a69bcbc22135ee17fed61ee6f1267a9124684517624a3db6e183418b494"

      def install
        bin.install "ledger"
      end
    end
  end
  on_arm do
    if Hardware::CPU.is_64_bit?
      url "https://github.com/formancehq/ledger/releases/download/v2.0.18/ledger_linux-arm64.tar.gz"
      sha256 "a7e312caec688d7c0c51c3ea8d5975539a4032fcd968b3650ec27f11f0cd5bc0"

      def install
        bin.install "ledger"
      end
    end
  end

  test do
    system "#{bin}/ledger version"
  end
end
