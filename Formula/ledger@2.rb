# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class LedgerAT2 < Formula
  desc ""
  homepage "https://formance.com"
  version "2.1.0"
  depends_on :linux

  on_intel do
    if Hardware::CPU.is_64_bit?
      url "https://github.com/formancehq/ledger/releases/download/v2.1.0/ledger_linux-amd64.tar.gz"
      sha256 "6966b9c29aa7197fab1d239a056807fd9b20a9d13c020b07953f163a2321f21a"

      def install
        bin.install "ledger"
      end
    end
  end
  on_arm do
    if Hardware::CPU.is_64_bit?
      url "https://github.com/formancehq/ledger/releases/download/v2.1.0/ledger_linux-arm64.tar.gz"
      sha256 "a676f6a0cdfa4039e7634c38d79632ac152c2a908748f4a45daacb826439817a"

      def install
        bin.install "ledger"
      end
    end
  end

  test do
    system "#{bin}/ledger version"
  end
end
