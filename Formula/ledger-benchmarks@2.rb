# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class LedgerBenchmarksAT2 < Formula
  desc ""
  homepage "https://formance.com"
  version "2.3.0-beta.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/formancehq/ledger/releases/download/v2.3.0-beta.7/ledger_darwin-amd64.tar.gz"
      sha256 "c8fc36df0d3f31cf5a73a84d0def87d7835cf855c95dd540d99084d124161455"

      def install
        bin.install "ledger-benchmarks"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/formancehq/ledger/releases/download/v2.3.0-beta.7/ledger_darwin-arm64.tar.gz"
      sha256 "908b3932c3389d0bff4169b27260baccb7934bb7a3375b13e2f67635adb36772"

      def install
        bin.install "ledger-benchmarks"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/formancehq/ledger/releases/download/v2.3.0-beta.7/ledger_linux-amd64.tar.gz"
        sha256 "d4155f60761d5e863b0824b0d128b1304ed69553a25f3c8e156dcfd998a5183b"

        def install
          bin.install "ledger-benchmarks"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/formancehq/ledger/releases/download/v2.3.0-beta.7/ledger_linux-arm64.tar.gz"
        sha256 "58a8a390e377cb99346dc5b83bf7966e19da24dd4bbd6b9b85eecbd4ce13a055"

        def install
          bin.install "ledger-benchmarks"
        end
      end
    end
  end
end
