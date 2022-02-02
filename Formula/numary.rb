# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Numary < Formula
  desc ""
  homepage "https://numary.com"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/numary/ledger/releases/download/v1.0.0/numary_1.0.0_macOS-ARM64.tar.gz"
      sha256 "c7824d93d08df9755acad5b5543724c9c197728c4dadbf3c0e00ab189079e6c0"

      def install
        bin.install "numary"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/numary/ledger/releases/download/v1.0.0/numary_1.0.0_macOS-64bit.tar.gz"
      sha256 "c737d3b1822870bf4d9aef79983f9ca013d7fe6cdc3830df6eeda0cd8dbe0758"

      def install
        bin.install "numary"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/numary/ledger/releases/download/v1.0.0/numary_1.0.0_Linux-64bit.tar.gz"
      sha256 "da5d751e4d72a523e1d6f5b12962be117aa154654fee09c2fb06b4bbe52b00e4"

      def install
        bin.install "numary"
      end
    end
  end

  test do
    system "#{bin}/numary version"
  end
end
