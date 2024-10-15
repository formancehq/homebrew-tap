# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ledger < Formula
  desc ""
  homepage "https://formance.com"
  version "2.1.0-rc.1"
  depends_on :linux

  on_intel do
    if Hardware::CPU.is_64_bit?
      url "https://github.com/formancehq/ledger/releases/download/v2.1.0-rc.1/ledger_linux-amd64.tar.gz"
      sha256 "9b864b1df4dc98104c6b28d339999695a52e94bf8da5ed5826bab523e1a4cefa"

      def install
        bin.install "ledger"
      end
    end
  end
  on_arm do
    if Hardware::CPU.is_64_bit?
      url "https://github.com/formancehq/ledger/releases/download/v2.1.0-rc.1/ledger_linux-arm64.tar.gz"
      sha256 "1ec92343b60d40d0ac5c1dac1b146c78f53d46c0d556dda7ed6eefb729eb8bcb"

      def install
        bin.install "ledger"
      end
    end
  end

  test do
    system "#{bin}/ledger version"
  end
end
