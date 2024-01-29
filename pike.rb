# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pike < Formula
  desc "Pike is a tool for determining the permissions or policy required for IAC code"
  homepage "https://github.com/JamesWoolfenden/pike#readme"
  version "0.3.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.3.5/pike_0.3.5_darwin_amd64.tar.gz"
      sha256 "fc63cf81fc8ce0016e4a6404f24f6bb4ae19d4a9607cfac2d27a19bb4691f6d3"

      def install
        bin.install "pike"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.3.5/pike_0.3.5_darwin_arm64.tar.gz"
      sha256 "7808b9b6a9ed237eadfdaa25812a698323d32c18870d6e3da20e0d6a746a2599"

      def install
        bin.install "pike"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.3.5/pike_0.3.5_linux_amd64.tar.gz"
      sha256 "181f5a4e176cf842b7d08ad67040024cf2cdfef9e415ae149cfa44f2c02c1f7e"

      def install
        bin.install "pike"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.3.5/pike_0.3.5_linux_arm64.tar.gz"
      sha256 "5126195c5735feb66ca2504c48e6b73538d0b4c4eeb67b8099be0b4d425a3ed8"

      def install
        bin.install "pike"
      end
    end
  end

  test do
    system "#{bin}/pike", "--help"
  end
end
