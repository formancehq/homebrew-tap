# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class LedgerAT2 < Formula
  desc ""
  homepage "https://formance.com"
  version "2.2.13"

  on_macos do
    on_intel do
      url "https://github.com/formancehq/ledger/releases/download/v2.2.13/ledger_darwin-amd64.tar.gz"
      sha256 "fa337e0bb129fc5e45ca1250858e1c2aa89eb559f7d588f6d01f67028be1482a"

      def install
        bin.install "ledger"
      end
    end
    on_arm do
      url "https://github.com/formancehq/ledger/releases/download/v2.2.13/ledger_darwin-arm64.tar.gz"
      sha256 "5bd5aa4586865ed110e0d528fdc4c4224dd15a1a307d1681faa0ba852e43566d"

      def install
        bin.install "ledger"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/formancehq/ledger/releases/download/v2.2.13/ledger_linux-amd64.tar.gz"
        sha256 "11ea62a640877492da8898d1840e2615f764e2edeb06f7692fa971746bc3f19e"

        def install
          bin.install "ledger"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/formancehq/ledger/releases/download/v2.2.13/ledger_linux-arm64.tar.gz"
        sha256 "1241f3689cb0ecee0932e110b21107902c2711fb04605f8d1ba832b6ad065135"

        def install
          bin.install "ledger"
        end
      end
    end
  end

  test do
    system "#{bin}/ledger version"
  end
end
