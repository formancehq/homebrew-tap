# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fctl < Formula
  desc ""
  homepage "https://formance.com"
  version "0.10.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/formancehq/stack/releases/download/components/fctl/v0.10.1/fctl_darwin-arm64.tar.gz"
      sha256 "fa3166b05d1754fcf37b28f2f4c2e1f120ab45e9de9d8d098c9354feae6592f1"

      def install
        bin.install "fctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/formancehq/stack/releases/download/components/fctl/v0.10.1/fctl_darwin-amd64.tar.gz"
      sha256 "912be926c7a8590efdab9c405de30749cd3ceff2fbc25037a5978620418b0846"

      def install
        bin.install "fctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/formancehq/stack/releases/download/components/fctl/v0.10.1/fctl_linux-arm64.tar.gz"
      sha256 "656d942cb5435edcdf8ff81e1abf16e245b79d9dfab64f6e7d9c091c6315a468"

      def install
        bin.install "fctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/formancehq/stack/releases/download/components/fctl/v0.10.1/fctl_linux-amd64.tar.gz"
      sha256 "583907ed4c7efeaf48d8165208a169e1997782bf7424048d2066534ede6c34c9"

      def install
        bin.install "fctl"
      end
    end
  end

  test do
    system "#{bin}/fctl version"
  end
end
