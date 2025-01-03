# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class LedgerBenchmarks < Formula
  desc ""
  homepage "https://formance.com"
  version "2.2.0-rc.1"

  on_macos do
    on_intel do
      url "https://github.com/formancehq/ledger/releases/download/v2.2.0-rc.1/ledger_darwin-amd64.tar.gz"
      sha256 "a2f7b0dcd10398cc1e35e2b2ab3ec310091ae531119531a84b53fa08418500c9"

      def install
        bin.install "ledger-benchmarks"
      end
    end
    on_arm do
      url "https://github.com/formancehq/ledger/releases/download/v2.2.0-rc.1/ledger_darwin-arm64.tar.gz"
      sha256 "0ddc138a0b7d4652ac0b9ad1100af652953365bf9e723adb952fa187daa85bc7"

      def install
        bin.install "ledger-benchmarks"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/formancehq/ledger/releases/download/v2.2.0-rc.1/ledger_linux-amd64.tar.gz"
        sha256 "f8bed49a074a114645ca89961cbd2d067d313c679ffe36ef9a01e6791e049644"

        def install
          bin.install "ledger-benchmarks"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/formancehq/ledger/releases/download/v2.2.0-rc.1/ledger_linux-arm64.tar.gz"
        sha256 "c844402cedba7c449f2bed4e53079dcccdf2486d41a9fe4c2c98fd6dd2956d0c"

        def install
          bin.install "ledger-benchmarks"
        end
      end
    end
  end
end
