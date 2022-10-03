# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Auth < Formula
  desc ""
  homepage "https://formance.com"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/formancehq/auth/releases/download/v0.2.1/auth_darwin-amd64.tar.gz"
      sha256 "6909c69810864ac61564c815aee3282b8533a36e2f8eb2b79cca48e45129e7e4"

      def install
        bin.install "auth"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/formancehq/auth/releases/download/v0.2.1/auth_darwin-arm64.tar.gz"
      sha256 "86736d04b41ce61e50e31458325f923cd851baefc2a44ae979bd5d798cb9b503"

      def install
        bin.install "auth"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/formancehq/auth/releases/download/v0.2.1/auth_linux-arm64.tar.gz"
      sha256 "9f67a09184bb5822f007012a989dd1bdb0b4574144ed108066f1571b96f0a4f9"

      def install
        bin.install "auth"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/formancehq/auth/releases/download/v0.2.1/auth_linux-amd64.tar.gz"
      sha256 "c43f93af11f726f52b3e58149d9b8f23b6961f864bd0d74cb2339ff07bd9ef8c"

      def install
        bin.install "auth"
      end
    end
  end

  test do
    system "#{bin}/auth version"
  end
end
