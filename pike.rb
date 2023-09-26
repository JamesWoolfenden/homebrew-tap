# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pike < Formula
  desc "Pike is a tool for determining the permissions or policy required for IAC code"
  homepage "https://github.com/JamesWoolfenden/pike#readme"
  version "0.2.100"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.2.100/pike_0.2.100_darwin_arm64.tar.gz"
      sha256 "65cdd833fde5f0d1a4a349bb15b281e93c9effb93f8b5acdb5eedc3753a6d8a9"

      def install
        bin.install "pike"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.2.100/pike_0.2.100_darwin_amd64.tar.gz"
      sha256 "4d5a6bad5d97ea1c52dd3dc8e9a4d6a8a07fe4428f65e6d2b3618973ad82b87b"

      def install
        bin.install "pike"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.2.100/pike_0.2.100_linux_amd64.tar.gz"
      sha256 "48edb65a46c802ffbd628e8066b2ec95f2e2f0b9f69f585ce4f1d3cbb91dfb47"

      def install
        bin.install "pike"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.2.100/pike_0.2.100_linux_arm64.tar.gz"
      sha256 "014174f5e3c68ca6cb25aaad5ac2964d62f23a784f47dac08cc512d635db6520"

      def install
        bin.install "pike"
      end
    end
  end

  test do
    system "#{bin}/pike", "--help"
  end
end
