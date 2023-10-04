# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pike < Formula
  desc "Pike is a tool for determining the permissions or policy required for IAC code"
  homepage "https://github.com/JamesWoolfenden/pike#readme"
  version "0.2.102"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.2.102/pike_0.2.102_darwin_amd64.tar.gz"
      sha256 "4328b61ac3a3184dd3580b6f3cf47b7593a46e79d32d271a43d56e27d4214db8"

      def install
        bin.install "pike"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.2.102/pike_0.2.102_darwin_arm64.tar.gz"
      sha256 "8e7cd244e789572cc16c97f281575e3ca73ea7ab39786abe6087703c396df91a"

      def install
        bin.install "pike"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.2.102/pike_0.2.102_linux_arm64.tar.gz"
      sha256 "5240652bc64c7ed6d2f5d7bf5a04a5f3b7ab97a68b8376fd7621075ffe4c7a12"

      def install
        bin.install "pike"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.2.102/pike_0.2.102_linux_amd64.tar.gz"
      sha256 "405827b9d31e69c02ee3f126091d53d76e16bfeec4360719fe2304454589b12a"

      def install
        bin.install "pike"
      end
    end
  end

  test do
    system "#{bin}/pike", "--help"
  end
end
