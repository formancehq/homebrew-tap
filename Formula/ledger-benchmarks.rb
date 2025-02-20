# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class LedgerBenchmarks < Formula
  desc ""
  homepage "https://formance.com"
  version "2.2.3"

  on_macos do
    on_intel do
      url "https://github.com/formancehq/ledger/releases/download/v2.2.3/ledger_darwin-amd64.tar.gz"
      sha256 "31806875b196111666fbf0d2acd8ea77582a07bdf1319c03e64a5eeb9e86bea0"

      def install
        bin.install "ledger-benchmarks"
      end
    end
    on_arm do
      url "https://github.com/formancehq/ledger/releases/download/v2.2.3/ledger_darwin-arm64.tar.gz"
      sha256 "d557ad95deeb8e669987150ccaa1380f7992357e060484f314ce795867012901"

      def install
        bin.install "ledger-benchmarks"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/formancehq/ledger/releases/download/v2.2.3/ledger_linux-amd64.tar.gz"
        sha256 "e2803a3463b97b315d6aab089ed75ca8ae43f10e648e52bb2d1568b0a60a2be6"

        def install
          bin.install "ledger-benchmarks"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/formancehq/ledger/releases/download/v2.2.3/ledger_linux-arm64.tar.gz"
        sha256 "b59b07804f0b35fbdddaacf9bfc4e96ca7b5b002a08c5328a72219bd8c24289a"

        def install
          bin.install "ledger-benchmarks"
        end
      end
    end
  end
end
