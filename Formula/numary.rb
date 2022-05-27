# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Numary < Formula
  desc ""
  homepage "https://numary.com"
  version "1.4.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/numary/ledger/releases/download/v1.4.3/numary_1.4.3_macOS-ARM64.tar.gz"
      sha256 "94d253751578136087df842500f71d42443ac4f56b4ee9fdd4e2fe7eb7065fb9"

      def install
        bin.install "numary"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/numary/ledger/releases/download/v1.4.3/numary_1.4.3_macOS-64bit.tar.gz"
      sha256 "4cf698ef55c31275b1ce5f849e07ecd50535ceb26d3bd10d38980cf81c49e4e1"

      def install
        bin.install "numary"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/numary/ledger/releases/download/v1.4.3/numary_1.4.3_Linux-64bit.tar.gz"
      sha256 "8523285968698ad1a16aa1f7f3f7e87838638047a8668cb4939bc78d22ddfa0d"

      def install
        bin.install "numary"
      end
    end
  end

  test do
    system "#{bin}/numary version"
  end
end
