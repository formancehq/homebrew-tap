# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fctl < Formula
  desc ""
  homepage "https://formance.com"
  version "0.9.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/formancehq/stack/releases/download/components/fctl/v0.9.0/fctl_darwin-arm64.tar.gz"
      sha256 "be5b91bd2dd72788e02a4db8265a39dd515ae03ef61e1f720d8ad74ed79a5f18"

      def install
        bin.install "fctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/formancehq/stack/releases/download/components/fctl/v0.9.0/fctl_darwin-amd64.tar.gz"
      sha256 "e479bad5be6d0dddaa343446bad79d8eed1da1dc4f61575baafc837617262c5c"

      def install
        bin.install "fctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/formancehq/stack/releases/download/components/fctl/v0.9.0/fctl_linux-amd64.tar.gz"
      sha256 "ece5a3fc805a3563bbbdf43b0186fa49db792ea2af4353e3028f2a9815d76a96"

      def install
        bin.install "fctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/formancehq/stack/releases/download/components/fctl/v0.9.0/fctl_linux-arm64.tar.gz"
      sha256 "39fccfdb42a11a03d33264673fdc9d48f9920c91c651c880ccf76c2af9b9d79f"

      def install
        bin.install "fctl"
      end
    end
  end

  test do
    system "#{bin}/fctl version"
  end
end
