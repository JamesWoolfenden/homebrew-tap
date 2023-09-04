# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pike < Formula
  desc "Pike is a tool for determining the permissions or policy required for IAC code"
  homepage "https://github.com/JamesWoolfenden/pike#readme"
  version "0.2.87"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.2.87/pike_0.2.87_darwin_arm64.tar.gz"
      sha256 "eb50c9d9fa4a4b29200e9e77f7e893f92ad50e2d04cb1563a525e991ff1e7196"

      def install
        bin.install "pike"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.2.87/pike_0.2.87_darwin_amd64.tar.gz"
      sha256 "2151bd13ecbbd7245d65cadaeb5cca869ebab225a83296ad702ea20fd376b66a"

      def install
        bin.install "pike"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.2.87/pike_0.2.87_linux_arm64.tar.gz"
      sha256 "cafc698b2f2a925f71c57c5c0614903ef64894a2f7d72294a1a3a9e42b03349f"

      def install
        bin.install "pike"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.2.87/pike_0.2.87_linux_amd64.tar.gz"
      sha256 "034dabfba21ee0b3be972228717c71b660859f87a5c4d59069643eb88eeb174c"

      def install
        bin.install "pike"
      end
    end
  end

  test do
    system "#{bin}/pike", "--help"
  end
end
