# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class LedgerAT2 < Formula
  desc ""
  homepage "https://formance.com"
  version "2.1.4"
  depends_on :linux

  on_intel do
    if Hardware::CPU.is_64_bit?
      url "https://github.com/formancehq/ledger/releases/download/v2.1.4/ledger_linux-amd64.tar.gz"
      sha256 "4af7f778bfc0b4a9b0a16f6bdce06b060403225481b49ca1a0784a7937cd0f68"

      def install
        bin.install "ledger"
      end
    end
  end
  on_arm do
    if Hardware::CPU.is_64_bit?
      url "https://github.com/formancehq/ledger/releases/download/v2.1.4/ledger_linux-arm64.tar.gz"
      sha256 "c9dab823f3c13822f3c9010d4e42997630b3712a217609ecb4b393da9f83c870"

      def install
        bin.install "ledger"
      end
    end
  end

  test do
    system "#{bin}/ledger version"
  end
end
