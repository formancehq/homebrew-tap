# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ledger < Formula
  desc ""
  homepage "https://formance.com"
  version "2.2.6"

  on_macos do
    on_intel do
      url "https://github.com/formancehq/ledger/releases/download/v2.2.6/ledger_darwin-amd64.tar.gz"
      sha256 "6d83756eef5d19f5a1f1c7171b8b658e1b065b23c24108d9e006599a54b4a50c"

      def install
        bin.install "ledger"
      end
    end
    on_arm do
      url "https://github.com/formancehq/ledger/releases/download/v2.2.6/ledger_darwin-arm64.tar.gz"
      sha256 "98523770d3de6cd0502b240e7ad1f42ee28aa8e346ca0bea8b884e796eb4df38"

      def install
        bin.install "ledger"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/formancehq/ledger/releases/download/v2.2.6/ledger_linux-amd64.tar.gz"
        sha256 "a0aea7bfb51eddb1ca1738c8d3cbc1488abfd26900f5a1cff5f60afd112f80ae"

        def install
          bin.install "ledger"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/formancehq/ledger/releases/download/v2.2.6/ledger_linux-arm64.tar.gz"
        sha256 "f8f2c2661c74b92c63e0222b6e39f9a118292c7de262c7d75971c328e7e6b60b"

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
