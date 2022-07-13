# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Payments < Formula
  desc ""
  homepage "https://formance.com"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/numary/payments/releases/download/v0.1.0/payments_darwin-arm64.tar.gz"
      sha256 "6da93ab2757cfd48807493c7c7be0894c39fbdb80e902711c0ec7522320e8919"

      def install
        bin.install "payments"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/numary/payments/releases/download/v0.1.0/payments_darwin-amd64.tar.gz"
      sha256 "2cc3f3241ba048fdf43f16cc885d858dc68945badd6a1e385f39d115c437bc09"

      def install
        bin.install "payments"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/numary/payments/releases/download/v0.1.0/payments_linux-arm64.tar.gz"
      sha256 "ea8563f8f6067bd76f7fdc44855ca7b5bf6de9f9444d9811b6e41a1adb2bdb91"

      def install
        bin.install "payments"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/numary/payments/releases/download/v0.1.0/payments_linux-amd64.tar.gz"
      sha256 "7c217a09f0b8485084529610b4c85a4d88168b32f441044c7aa0e5f05cf6fd4c"

      def install
        bin.install "payments"
      end
    end
  end

  test do
    system "#{bin}/payments version"
  end
end
