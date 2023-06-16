# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ghat < Formula
  desc "Ghat is a tool for updating GHA dependencies"
  homepage "https://github.com/JamesWoolfenden/ghat#readme"
  version "0.0.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JamesWoolfenden/ghat/releases/download/v0.0.8/ghat_0.0.8_darwin_arm64.tar.gz"
      sha256 "dc35ee747806c372562f8612d8420a727cd730a1ed0bc0670aa61b81b20c8f59"

      def install
        bin.install "ghat"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/JamesWoolfenden/ghat/releases/download/v0.0.8/ghat_0.0.8_darwin_amd64.tar.gz"
      sha256 "ca2d97b0fc2476122e76a73b8628dd1b870622e59a7970def941a1b360e49f6e"

      def install
        bin.install "ghat"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/JamesWoolfenden/ghat/releases/download/v0.0.8/ghat_0.0.8_linux_amd64.tar.gz"
      sha256 "c10f3f1c9d6cc72954593d3ee29ce90826e0c3c2ef06afdc15ab45941b3f87ed"

      def install
        bin.install "ghat"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/JamesWoolfenden/ghat/releases/download/v0.0.8/ghat_0.0.8_linux_arm64.tar.gz"
      sha256 "afa54b6f8c5c91cd6658a74e26fef6a911f4b97f1568de5cd83e696b33c1ca80"

      def install
        bin.install "ghat"
      end
    end
  end

  test do
    system "#{bin}/ghat", "--help"
  end
end