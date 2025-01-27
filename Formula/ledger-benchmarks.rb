# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class LedgerBenchmarks < Formula
  desc ""
  homepage "https://formance.com"
  version "2.2.0-rc.4"

  on_macos do
    on_intel do
      url "https://github.com/formancehq/ledger/releases/download/v2.2.0-rc.4/ledger_darwin-amd64.tar.gz"
      sha256 "1564b4587fa8ba6aa770d77f3a95931d4d1ab458b4e7da46d5a38ecda217a3b4"

      def install
        bin.install "ledger-benchmarks"
      end
    end
    on_arm do
      url "https://github.com/formancehq/ledger/releases/download/v2.2.0-rc.4/ledger_darwin-arm64.tar.gz"
      sha256 "25ed76aee4601e5949863d1167e00f3aa6fe8c667a06cf01281d4dfb2af99b4f"

      def install
        bin.install "ledger-benchmarks"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/formancehq/ledger/releases/download/v2.2.0-rc.4/ledger_linux-amd64.tar.gz"
        sha256 "1032319cccf0eb4c025f80cb0ec4cfd32558630699a734cd05e260c0faefd337"

        def install
          bin.install "ledger-benchmarks"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/formancehq/ledger/releases/download/v2.2.0-rc.4/ledger_linux-arm64.tar.gz"
        sha256 "2dc4879461031e7a9eddd7968d6eb0645e80541049787bcd017fee48a452a224"

        def install
          bin.install "ledger-benchmarks"
        end
      end
    end
  end
end
