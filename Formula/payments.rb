# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Payments < Formula
  desc ""
  homepage "https://formance.com"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/numary/payments/releases/download/v0.1.1/payments_darwin-amd64.tar.gz"
      sha256 "d84f112144f71e4b579915de3ffc6d6347b7d81d3656edd9f6be8de34f049790"

      def install
        bin.install "payments"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/numary/payments/releases/download/v0.1.1/payments_darwin-arm64.tar.gz"
      sha256 "44c3ea4afb130bc2deba02baac5803c2982c4eec79517c976de795cc0c322e59"

      def install
        bin.install "payments"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/numary/payments/releases/download/v0.1.1/payments_linux-arm64.tar.gz"
      sha256 "a8a74032bd14c46974475214f08ec25ecda336ca0698af7415dcdfd5219501ae"

      def install
        bin.install "payments"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/numary/payments/releases/download/v0.1.1/payments_linux-amd64.tar.gz"
      sha256 "4d1d8defb3e840f0196b2dca6d77f079f15b8cde81f417fad9218ebec38977be"

      def install
        bin.install "payments"
      end
    end
  end

  test do
    system "#{bin}/payments version"
  end
end
