# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class LedgerBenchmarks < Formula
  desc ""
  homepage "https://formance.com"
  version "2.2.0-rc.3"

  on_macos do
    on_intel do
      url "https://github.com/formancehq/ledger/releases/download/v2.2.0-rc.3/ledger_darwin-amd64.tar.gz"
      sha256 "16ba8556e6689cf8ca1b0d349a49e0ebc4c11dc37fd62e89ee746bd6be0bb99c"

      def install
        bin.install "ledger-benchmarks"
      end
    end
    on_arm do
      url "https://github.com/formancehq/ledger/releases/download/v2.2.0-rc.3/ledger_darwin-arm64.tar.gz"
      sha256 "0b5feff2d60224a9d884784d8e0a869dd0a136ad7fb8c2e0a281d7af3b08105c"

      def install
        bin.install "ledger-benchmarks"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/formancehq/ledger/releases/download/v2.2.0-rc.3/ledger_linux-amd64.tar.gz"
        sha256 "9e265410d1100f002f93428f49661cc47883fbe812014270d1b2f14fa25f76b8"

        def install
          bin.install "ledger-benchmarks"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/formancehq/ledger/releases/download/v2.2.0-rc.3/ledger_linux-arm64.tar.gz"
        sha256 "7624f767fc61006abbba43d511b91c8ab69c99b685088b28429eb884fcc79934"

        def install
          bin.install "ledger-benchmarks"
        end
      end
    end
  end
end
