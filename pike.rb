# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pike < Formula
  desc "Pike is a tool for determining the permissions or policy required for IAC code"
  homepage "https://github.com/JamesWoolfenden/pike#readme"
  version "0.1.84"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.1.84/pike_0.1.84_darwin_amd64.tar.gz"
      sha256 "adae593949aa6c64ef7b4aaef8a16fb3ddba19229181680b547114abd9b9fca7"

      def install
        bin.install "pike"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.1.84/pike_0.1.84_darwin_arm64.tar.gz"
      sha256 "8538851e0696916305c943aa84be41ed8f8e31287b231f2fabbc35364ffa552b"

      def install
        bin.install "pike"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.1.84/pike_0.1.84_linux_amd64.tar.gz"
      sha256 "3abaa46c59d2ee94094cd5bcd803a52b2011d3d9a604f918b7ccf9f73d655daa"

      def install
        bin.install "pike"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.1.84/pike_0.1.84_linux_arm64.tar.gz"
      sha256 "e1618d9c3f3d4516474213ebffd2c045ce85d9834a6dc783d6fd2df02acc4438"

      def install
        bin.install "pike"
      end
    end
  end

  test do
    system "#{bin}/pike", "--help"
  end
end
