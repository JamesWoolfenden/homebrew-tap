# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pike < Formula
  desc "Pike is a tool for determining the permissions or policy required for IAC code"
  homepage "https://github.com/JamesWoolfenden/pike#readme"
  version "0.3.10"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.3.10/pike_0.3.10_darwin_amd64.tar.gz"
      sha256 "a8b511b3c68ac39605bdfb133a0941c8b0eb40c4c2932d02ee0a596890f6e41b"

      def install
        bin.install "pike"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.3.10/pike_0.3.10_darwin_arm64.tar.gz"
      sha256 "0d5e03f7b50b33e3ffa7529b50870f660767b645c90bb280045714f8a587dbcc"

      def install
        bin.install "pike"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.3.10/pike_0.3.10_linux_amd64.tar.gz"
      sha256 "d9502d3578252a9e1bbccea138495fdf4d83c87f108ad7f63720145856f15b24"

      def install
        bin.install "pike"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.3.10/pike_0.3.10_linux_arm64.tar.gz"
      sha256 "241422d156f88efa15b55851da2237d018f63c42573d096d155dead8ec15328d"

      def install
        bin.install "pike"
      end
    end
  end

  test do
    system "#{bin}/pike", "--help"
  end
end
