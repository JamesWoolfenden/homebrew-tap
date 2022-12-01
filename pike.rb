# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pike < Formula
  desc "Pike is a tool for determining the permissions or policy required for IAC code"
  homepage "https://github.com/JamesWoolfenden/pike#readme"
  version "0.2.37"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.2.37/pike_0.2.37_darwin_amd64.tar.gz"
      sha256 "f6bb496f58233e64d1525e067a7eccb36d4473bd4ffbaab9f3f55bf644e1ad32"

      def install
        bin.install "pike"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.2.37/pike_0.2.37_darwin_arm64.tar.gz"
      sha256 "08d9b507e72918e6ea601c160af76ef2d5d6fb60a106b1c62d73e1d5162e9040"

      def install
        bin.install "pike"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.2.37/pike_0.2.37_linux_arm64.tar.gz"
      sha256 "fb4564346f33a2293a5835ad52991616f7d356377dad12260b371223c5e451e1"

      def install
        bin.install "pike"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.2.37/pike_0.2.37_linux_amd64.tar.gz"
      sha256 "6bc7da615d94a73e9634fc4fb9e25f6b5ea86183977254e6d99a48436ec42ca7"

      def install
        bin.install "pike"
      end
    end
  end

  test do
    system "#{bin}/pike", "--help"
  end
end
