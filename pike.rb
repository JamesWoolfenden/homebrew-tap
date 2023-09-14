# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pike < Formula
  desc "Pike is a tool for determining the permissions or policy required for IAC code"
  homepage "https://github.com/JamesWoolfenden/pike#readme"
  version "0.2.95"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.2.95/pike_0.2.95_darwin_amd64.tar.gz"
      sha256 "35d8f52ac4fcf974938c0ea258f92bd0741f5f3efc88cfc096479b1cfcbf7215"

      def install
        bin.install "pike"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.2.95/pike_0.2.95_darwin_arm64.tar.gz"
      sha256 "d7acbf4fa619071f2db680e0b600aaf362ca1ef6f0050ac0bf828994dbb4c630"

      def install
        bin.install "pike"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.2.95/pike_0.2.95_linux_amd64.tar.gz"
      sha256 "484bb2d9fe56eed613e29e6434053384741b1fe3bd7bcf43783b06fe67e913ab"

      def install
        bin.install "pike"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.2.95/pike_0.2.95_linux_arm64.tar.gz"
      sha256 "77ca5ad0c57aae719bbe8f524a8f5bf45db488c1ce4eaa54fa4f6740c167a722"

      def install
        bin.install "pike"
      end
    end
  end

  test do
    system "#{bin}/pike", "--help"
  end
end
