# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pike < Formula
  desc "Pike is a tool for determining the permissions or policy required for IAC code"
  homepage "https://github.com/JamesWoolfenden/pike#readme"
  version "0.3.47"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.3.47/pike_0.3.47_darwin_amd64.tar.gz"
      sha256 "b78648568fe881f6f4b7353ec4842dae5f2d13e2c52bb29bbec25eb7f87c612f"

      def install
        bin.install "pike"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.3.47/pike_0.3.47_darwin_arm64.tar.gz"
      sha256 "54dcf64a140bb62a4eabd7d619384da6ae93e4a9acfab23088742e529664270d"

      def install
        bin.install "pike"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/JamesWoolfenden/pike/releases/download/v0.3.47/pike_0.3.47_linux_amd64.tar.gz"
        sha256 "c4bf512fe388c804e9abb976569e2e1f15f8372c10e0e3a089c5bf836e535d8c"

        def install
          bin.install "pike"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/JamesWoolfenden/pike/releases/download/v0.3.47/pike_0.3.47_linux_arm64.tar.gz"
        sha256 "c8692e97c1b841adcafba92700dfa9d64b09834b8087023610794b174ad4ca7b"

        def install
          bin.install "pike"
        end
      end
    end
  end

  test do
    system "#{bin}/pike", "--help"
  end
end
