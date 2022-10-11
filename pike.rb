# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pike < Formula
  desc "Pike is a tool for determining the permissions or policy required for IAC code"
  homepage "https://github.com/JamesWoolfenden/pike#readme"
  version "0.2.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.2.4/pike_0.2.4_darwin_arm64.tar.gz"
      sha256 "d0bb7f8a0be1edf70677dabf8fcd2f9ae938cd4619c008eb9a0e7b9409300d15"

      def install
        bin.install "pike"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.2.4/pike_0.2.4_darwin_amd64.tar.gz"
      sha256 "697a98648b93726c87a85468ce6284b3db9c462631d2fd136410a6fa8910f6f0"

      def install
        bin.install "pike"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.2.4/pike_0.2.4_linux_amd64.tar.gz"
      sha256 "c796df54d2c5103784cd6d3be9ea5a6fd842524d1ab4c60a4a2e4b4520c2a4a3"

      def install
        bin.install "pike"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.2.4/pike_0.2.4_linux_arm64.tar.gz"
      sha256 "8bc0e61fed2c2b9ab735568992d68d8511ff22f34f7cf5cac29e6bead4333cae"

      def install
        bin.install "pike"
      end
    end
  end

  test do
    system "#{bin}/pike", "--help"
  end
end
