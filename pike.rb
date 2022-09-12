# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pike < Formula
  desc "Pike is a tool for determining the permissions or policy required for IAC code"
  homepage "https://github.com/JamesWoolfenden/pike#readme"
  version "0.1.77"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.1.77/pike_0.1.77_darwin_amd64.tar.gz"
      sha256 "9926e7d125abaf15d993e1a005de4cd31a028c3e25bdbaf42d809c5c867310e2"

      def install
        bin.install "pike"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.1.77/pike_0.1.77_darwin_arm64.tar.gz"
      sha256 "62a71d067af465c1523ac5325bbe655e23cc73852d1cdfca614d911f513b398f"

      def install
        bin.install "pike"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.1.77/pike_0.1.77_linux_amd64.tar.gz"
      sha256 "2886b60d01427d0f1cc25e9f07c4dfd237d77a6b13c3e7153bee9412f941928a"

      def install
        bin.install "pike"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.1.77/pike_0.1.77_linux_arm64.tar.gz"
      sha256 "d188a0bba098c6fcdd0c2561e833e156e62a62449107639de1279c2cec54d4e5"

      def install
        bin.install "pike"
      end
    end
  end

  test do
    system "#{bin}/pike", "--help"
  end
end
