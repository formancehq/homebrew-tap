# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class LedgerBenchmarksAT2 < Formula
  desc ""
  homepage "https://formance.com"
  version "2.2.14"

  on_macos do
    on_intel do
      url "https://github.com/formancehq/ledger/releases/download/v2.2.14/ledger_darwin-amd64.tar.gz"
      sha256 "6e9f815f40b82a1e0ad02407f5594c400a6e8ac0bf05d1ddef031dfbb81bb2b6"

      def install
        bin.install "ledger-benchmarks"
      end
    end
    on_arm do
      url "https://github.com/formancehq/ledger/releases/download/v2.2.14/ledger_darwin-arm64.tar.gz"
      sha256 "f44ded6dbe75b1b27308fa2a440334e6dcbb16c70ad683c608a8ef7f86f8f0b0"

      def install
        bin.install "ledger-benchmarks"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/formancehq/ledger/releases/download/v2.2.14/ledger_linux-amd64.tar.gz"
        sha256 "12d31b5d072d09d148fafd028fd1813cfa9ac512c2a6ae240ce848fa8be5451e"

        def install
          bin.install "ledger-benchmarks"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/formancehq/ledger/releases/download/v2.2.14/ledger_linux-arm64.tar.gz"
        sha256 "a0cae93c3ab22368380231428b23d076672d703fc46ea083b626516afd323727"

        def install
          bin.install "ledger-benchmarks"
        end
      end
    end
  end
end
