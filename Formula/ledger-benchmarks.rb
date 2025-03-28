# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class LedgerBenchmarks < Formula
  desc ""
  homepage "https://formance.com"
  version "2.2.23"

  on_macos do
    on_intel do
      url "https://github.com/formancehq/ledger/releases/download/v2.2.23/ledger_darwin-amd64.tar.gz"
      sha256 "4715f3d17086162b6e79444d560cba93233ea93d54104928f12839f67c557c98"

      def install
        bin.install "ledger-benchmarks"
      end
    end
    on_arm do
      url "https://github.com/formancehq/ledger/releases/download/v2.2.23/ledger_darwin-arm64.tar.gz"
      sha256 "985a9e994955d99469f2bb561824006a619ba35eb726441428a1695065a0563d"

      def install
        bin.install "ledger-benchmarks"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/formancehq/ledger/releases/download/v2.2.23/ledger_linux-amd64.tar.gz"
        sha256 "cfd4d3769ec92e8f64663e6a1f248c05d4392b21a5ef9454aa829b95f4b73406"

        def install
          bin.install "ledger-benchmarks"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/formancehq/ledger/releases/download/v2.2.23/ledger_linux-arm64.tar.gz"
        sha256 "e1b80cf9702f655396b464897504498eb8ce82a8f8d6d0310e2399df3ba292fe"

        def install
          bin.install "ledger-benchmarks"
        end
      end
    end
  end
end
