# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class LedgerAT2 < Formula
  desc ""
  homepage "https://formance.com"
  version "2.3.0-beta.8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/formancehq/ledger/releases/download/v2.3.0-beta.8/ledger_darwin-amd64.tar.gz"
      sha256 "8832326bd18a4b4f8eaa48e9217b92e8e3bf1e0d31ec9a63d424bf8e29414170"

      def install
        bin.install "ledger"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/formancehq/ledger/releases/download/v2.3.0-beta.8/ledger_darwin-arm64.tar.gz"
      sha256 "d0a413683ada6d810c37e8d14e1982a915ce27f0ccdadfd41502b2810e7bc01f"

      def install
        bin.install "ledger"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/formancehq/ledger/releases/download/v2.3.0-beta.8/ledger_linux-amd64.tar.gz"
        sha256 "078a5e1c33689475c0dc539ef83ea42839a353950a4c23ed5cad3fcff258e2fb"

        def install
          bin.install "ledger"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/formancehq/ledger/releases/download/v2.3.0-beta.8/ledger_linux-arm64.tar.gz"
        sha256 "bfcdec2136fbe1db706af92bd32a62aada433ff2fb8692e57c60ddeb59ecd1c3"

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
