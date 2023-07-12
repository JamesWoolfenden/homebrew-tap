# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Stevedore < Formula
  desc "stevedore is a tool for managing Dockerfile labels"
  homepage "https://github.com/JamesWoolfenden/stevedore#readme"
  version "0.0.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JamesWoolfenden/stevedore/releases/download/v0.0.7/stevedore_0.0.7_darwin_arm64.tar.gz"
      sha256 "f7eb20556afb23a5eae434f486b80fc5b9129cdb2c3fbdffd6240673961aee8e"

      def install
        bin.install "stevedore"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/JamesWoolfenden/stevedore/releases/download/v0.0.7/stevedore_0.0.7_darwin_amd64.tar.gz"
      sha256 "afa7ac7cbc1eb9e60e68152c42b05615eed2c047f9ea8d633d3425f157caa028"

      def install
        bin.install "stevedore"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/JamesWoolfenden/stevedore/releases/download/v0.0.7/stevedore_0.0.7_linux_amd64.tar.gz"
      sha256 "07c7e51971d4aa2afa3080b880afe62e7aaeb2667d8622ae1e33b02926817f38"

      def install
        bin.install "stevedore"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/JamesWoolfenden/stevedore/releases/download/v0.0.7/stevedore_0.0.7_linux_arm64.tar.gz"
      sha256 "a2fc200b11c2c3c4ec6577b046512a0dab88420aca41c4fe28a59981e1450fbb"

      def install
        bin.install "stevedore"
      end
    end
  end

  test do
    system "#{bin}/stevedore", "--help"
  end
end
