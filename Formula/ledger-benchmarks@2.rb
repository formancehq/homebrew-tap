# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class LedgerBenchmarksAT2 < Formula
  desc ""
  homepage "https://formance.com"
  version "2.2.0-alpha.4"

  on_macos do
    on_intel do
      url "https://github.com/formancehq/ledger/releases/download/v2.2.0-alpha.4/ledger_darwin-amd64.tar.gz"
      sha256 "9258713b1c9f2f50a23c53dc5d7675faccc52ad1bc70ed9676a441fcbb9b6b42"

      def install
        bin.install "ledger-benchmarks"
      end
    end
    on_arm do
      url "https://github.com/formancehq/ledger/releases/download/v2.2.0-alpha.4/ledger_darwin-arm64.tar.gz"
      sha256 "b9fc530336e5fa9781c4a4cbf902148bc3eb99f8a5241c47912a56bbd3ce73f9"

      def install
        bin.install "ledger-benchmarks"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/formancehq/ledger/releases/download/v2.2.0-alpha.4/ledger_linux-amd64.tar.gz"
        sha256 "ad973656e3e267f570b30b509c0b00ab7a1f3d5ab6d8571e451d980eea89a644"

        def install
          bin.install "ledger-benchmarks"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/formancehq/ledger/releases/download/v2.2.0-alpha.4/ledger_linux-arm64.tar.gz"
        sha256 "40873e5c7293964aba5434af05adc6ee8689c3401b28a4b08371407226754fb7"

        def install
          bin.install "ledger-benchmarks"
        end
      end
    end
  end
end
