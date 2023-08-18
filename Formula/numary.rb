# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Numary < Formula
  desc ""
  homepage "https://formance.com"
  version "1.10.6"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/formancehq/ledger/releases/download/v1.10.6/numary_Darwin_arm64.tar.gz"
      sha256 "2081f704ba033e292201cb204712ace5f1ada683e2e6a67e78a80b879e7411c5"

      def install
        bin.install "numary"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/formancehq/ledger/releases/download/v1.10.6/numary_Darwin_x86_64.tar.gz"
      sha256 "91c8b839bd11796d954abbe2f6a6c8a7c0f2f0dc6e0cb92184cd633aaa52f152"

      def install
        bin.install "numary"
      end
    end
  end

  test do
    system "#{bin}/numary version"
  end
end
