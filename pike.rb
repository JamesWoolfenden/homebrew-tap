# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pike < Formula
  desc "Pike is a tool for determining the permissions or policy required for IAC code"
  homepage "https://github.com/JamesWoolfenden/pike#readme"
  version "0.2.65"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.2.65/pike_0.2.65_darwin_amd64.tar.gz"
      sha256 "264841e713f1429378e289864bce1274a3c320949ca5b836cd76d47d0cfd6d05"

      def install
        bin.install "pike"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.2.65/pike_0.2.65_darwin_arm64.tar.gz"
      sha256 "e2f1d1f311a61e08fb8a465d53337415b44672ba727cdb261db9b3ab8beb1936"

      def install
        bin.install "pike"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.2.65/pike_0.2.65_linux_amd64.tar.gz"
      sha256 "adc1ea3dc91089eec3c74432d26611eb23a397a4837a35668ba86fa13ff8b107"

      def install
        bin.install "pike"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.2.65/pike_0.2.65_linux_arm64.tar.gz"
      sha256 "8f0d6539cf8da37b70385f4707e718b396cbd75b61a4adb41ad30d1b7815397b"

      def install
        bin.install "pike"
      end
    end
  end

  test do
    system "#{bin}/pike", "--help"
  end
end
