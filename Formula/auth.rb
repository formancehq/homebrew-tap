# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Auth < Formula
  desc ""
  homepage "https://formance.com"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/numary/auth/releases/download/v0.1.0/auth_darwin-amd64.tar.gz"
      sha256 "d15abb06020b908704946521bb5c075424f1f48b58819acb435255ad0cb367cd"

      def install
        bin.install "auth"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/numary/auth/releases/download/v0.1.0/auth_darwin-arm64.tar.gz"
      sha256 "24b477311818467e0a97d8679ee1e57ccd1fab63e93819cb91a2af4a29e7e6c4"

      def install
        bin.install "auth"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/numary/auth/releases/download/v0.1.0/auth_linux-arm64.tar.gz"
      sha256 "8dce436137370e51b63410af26e5bd1bf0633cb1849e2b4720f873f42a289e87"

      def install
        bin.install "auth"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/numary/auth/releases/download/v0.1.0/auth_linux-amd64.tar.gz"
      sha256 "c98d321898607c738d004b860aee88a406364c04e2e85b4c89422f308e82f0f9"

      def install
        bin.install "auth"
      end
    end
  end

  test do
    system "#{bin}/auth version"
  end
end
