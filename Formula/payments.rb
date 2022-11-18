# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Payments < Formula
  desc ""
  homepage "https://formance.com"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/formancehq/payments/releases/download/v0.2.0/payments_darwin-arm64.tar.gz"
      sha256 "9d3fba573e331991d633b627ff8ef8bf182f570477bd24106c135fce7d1e919a"

      def install
        bin.install "payments"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/formancehq/payments/releases/download/v0.2.0/payments_darwin-amd64.tar.gz"
      sha256 "3dbce732c8f2156164666ddafa3a447ddcb168aaad3089e5d69bb345a80a8ec7"

      def install
        bin.install "payments"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/formancehq/payments/releases/download/v0.2.0/payments_linux-arm64.tar.gz"
      sha256 "79af031a74c866c0f391c98072a0c404544714304f88aa46b2d82d453739f7da"

      def install
        bin.install "payments"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/formancehq/payments/releases/download/v0.2.0/payments_linux-amd64.tar.gz"
      sha256 "a33be0b1082a3256ad23766454e43a330bd009565b98928632f53bbff3edcdb6"

      def install
        bin.install "payments"
      end
    end
  end

  test do
    system "#{bin}/payments version"
  end
end
