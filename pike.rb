# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pike < Formula
  desc "Pike is a tool for determining the permissions or policy required for IAC code"
  homepage "https://github.com/JamesWoolfenden/pike#readme"
  version "0.1.103"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.1.103/pike_0.1.103_darwin_amd64.tar.gz"
      sha256 "cf1a9e4ad10edb654936d00086459807e6138747dd9721f754074c4f84d6b377"

      def install
        bin.install "pike"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.1.103/pike_0.1.103_darwin_arm64.tar.gz"
      sha256 "685361724a3857e5d8ec4bef7e35f3c914394b6af37e5f5b01254f4e157cfc92"

      def install
        bin.install "pike"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.1.103/pike_0.1.103_linux_arm64.tar.gz"
      sha256 "2264a14abb3e5bd1d5f03ee142775db233618a3e7f06d54347c59a6d9d4501b4"

      def install
        bin.install "pike"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.1.103/pike_0.1.103_linux_amd64.tar.gz"
      sha256 "ed5af537169e1730e86557e69e81d2c7aabac380260461974b3f4bb93946e3c2"

      def install
        bin.install "pike"
      end
    end
  end

  test do
    system "#{bin}/pike", "--help"
  end
end
