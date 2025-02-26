# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class LedgerBenchmarksAT2 < Formula
  desc ""
  homepage "https://formance.com"
  version "2.2.5"

  on_macos do
    on_intel do
      url "https://github.com/formancehq/ledger/releases/download/v2.2.5/ledger_darwin-amd64.tar.gz"
      sha256 "9bd6a4dc2fef946cec34eeec2cf9d4666825c093c0128d09e9ddee661ee579ca"

      def install
        bin.install "ledger-benchmarks"
      end
    end
    on_arm do
      url "https://github.com/formancehq/ledger/releases/download/v2.2.5/ledger_darwin-arm64.tar.gz"
      sha256 "9be73e7641824b9bfe02761f28e95f44564dd16475a09c60536cda982e372257"

      def install
        bin.install "ledger-benchmarks"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/formancehq/ledger/releases/download/v2.2.5/ledger_linux-amd64.tar.gz"
        sha256 "63fa88722fa960ac9c1479604bc9413b98eb52ea8d9373e340afe50cac22379e"

        def install
          bin.install "ledger-benchmarks"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/formancehq/ledger/releases/download/v2.2.5/ledger_linux-arm64.tar.gz"
        sha256 "865b631caa93120e5c489da842e6d99b0c53e06581c4b15cf7c80a00077ca89b"

        def install
          bin.install "ledger-benchmarks"
        end
      end
    end
  end
end
