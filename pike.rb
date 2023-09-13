# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pike < Formula
  desc "Pike is a tool for determining the permissions or policy required for IAC code"
  homepage "https://github.com/JamesWoolfenden/pike#readme"
  version "0.2.94"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.2.94/pike_0.2.94_darwin_amd64.tar.gz"
      sha256 "550efa08407eab3a4bb6e1b6d6daeacce8144488a0536d215cc335b46a12964e"

      def install
        bin.install "pike"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.2.94/pike_0.2.94_darwin_arm64.tar.gz"
      sha256 "4a4ce963bf1f815b92d04f546facfb53d00514906c21a95effbc472640dfce27"

      def install
        bin.install "pike"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.2.94/pike_0.2.94_linux_amd64.tar.gz"
      sha256 "2026bbccfeec4a35624380173c75b449b6f718e12107de4cb0ec13c41fc9f102"

      def install
        bin.install "pike"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.2.94/pike_0.2.94_linux_arm64.tar.gz"
      sha256 "7d6854a7ae5233c3a0b4a053a4135b8ebbb2d452b17059862613f84bb0874897"

      def install
        bin.install "pike"
      end
    end
  end

  test do
    system "#{bin}/pike", "--help"
  end
end
