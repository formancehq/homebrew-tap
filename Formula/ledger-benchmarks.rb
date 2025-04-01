# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class LedgerBenchmarks < Formula
  desc ""
  homepage "https://formance.com"
  version "2.2.24"

  on_macos do
    on_intel do
      url "https://github.com/formancehq/ledger/releases/download/v2.2.24/ledger_darwin-amd64.tar.gz"
      sha256 "ebc08bb28b131508f53675696d2618f109796d2ced7eb1b009c8966789e27b9f"

      def install
        bin.install "ledger-benchmarks"
      end
    end
    on_arm do
      url "https://github.com/formancehq/ledger/releases/download/v2.2.24/ledger_darwin-arm64.tar.gz"
      sha256 "a330f8bc56aa08d396668ec70210d8a3524e7c31b033c75daac5ee7f74baaf7e"

      def install
        bin.install "ledger-benchmarks"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/formancehq/ledger/releases/download/v2.2.24/ledger_linux-amd64.tar.gz"
        sha256 "66376f902f9775def2eac72c20ccdee9641b59f5b70dc9246ac264e9921a6f4d"

        def install
          bin.install "ledger-benchmarks"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/formancehq/ledger/releases/download/v2.2.24/ledger_linux-arm64.tar.gz"
        sha256 "e43fa88029cc846a3793b00c1673b793641a2056ec10f839dbc04f636e4609c7"

        def install
          bin.install "ledger-benchmarks"
        end
      end
    end
  end
end
