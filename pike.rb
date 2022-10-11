# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pike < Formula
  desc "Pike is a tool for determining the permissions or policy required for IAC code"
  homepage "https://github.com/JamesWoolfenden/pike#readme"
  version "0.2.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.2.5/pike_0.2.5_darwin_amd64.tar.gz"
      sha256 "98751fb3993297db116db3952408b04fc7c821cfd968e1743f03415e733eafa4"

      def install
        bin.install "pike"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.2.5/pike_0.2.5_darwin_arm64.tar.gz"
      sha256 "5c235c45794833b09973d744b1576abd2a448079b7b3ff1a5bb2d6bd60234f97"

      def install
        bin.install "pike"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.2.5/pike_0.2.5_linux_amd64.tar.gz"
      sha256 "a8d126ef7ceb082e6d6546d3327f2717019663aee373e7288170a43768f7248f"

      def install
        bin.install "pike"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.2.5/pike_0.2.5_linux_arm64.tar.gz"
      sha256 "acb42bc011c827c646e8d74459bb61b02e7ea67d46eb4daee50ea7ecf914238c"

      def install
        bin.install "pike"
      end
    end
  end

  test do
    system "#{bin}/pike", "--help"
  end
end
