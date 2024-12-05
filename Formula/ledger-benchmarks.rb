# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class LedgerBenchmarks < Formula
  desc ""
  homepage "https://formance.com"
  version "2.2.0-alpha.5"

  on_macos do
    on_intel do
      url "https://github.com/formancehq/ledger/releases/download/v2.2.0-alpha.5/ledger_darwin-amd64.tar.gz"
      sha256 "c8241059b46ccdfe3c92dc96e85203ab713fcc0f55795f23f5242b4259d9ddf1"

      def install
        bin.install "ledger-benchmarks"
      end
    end
    on_arm do
      url "https://github.com/formancehq/ledger/releases/download/v2.2.0-alpha.5/ledger_darwin-arm64.tar.gz"
      sha256 "fd1b6fd0b3892c3c490096cabea3dcc31e7471e7f333a05fc8d1b882066067e6"

      def install
        bin.install "ledger-benchmarks"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/formancehq/ledger/releases/download/v2.2.0-alpha.5/ledger_linux-amd64.tar.gz"
        sha256 "9a2239575b8a802e5fc0cd1b1a56c1b1a0fea734dc063e0aed7c73397875ba3d"

        def install
          bin.install "ledger-benchmarks"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/formancehq/ledger/releases/download/v2.2.0-alpha.5/ledger_linux-arm64.tar.gz"
        sha256 "3da0e57b0e13d8d5af3807d24ba4c8195247182d68e4d3a05d06506705678ada"

        def install
          bin.install "ledger-benchmarks"
        end
      end
    end
  end
end
