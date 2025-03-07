# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pike < Formula
  desc "Pike is a tool for determining the permissions or policy required for IAC code"
  homepage "https://github.com/JamesWoolfenden/pike#readme"
  version "0.3.44"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.3.44/pike_0.3.44_darwin_amd64.tar.gz"
      sha256 "0891209d8d039f8e32985052fff85c369ed49cc8416a959eed7bbc62401fa8ff"

      def install
        bin.install "pike"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.3.44/pike_0.3.44_darwin_arm64.tar.gz"
      sha256 "b84cae58d654e6be3907b503756d6f68cdce68957961cce3569d3f380c40a0b9"

      def install
        bin.install "pike"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/JamesWoolfenden/pike/releases/download/v0.3.44/pike_0.3.44_linux_amd64.tar.gz"
        sha256 "e17b2ec0c7c05fecd4a7ef1bb6c6312fd87047aa697272ba91a1846dc60e1616"

        def install
          bin.install "pike"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/JamesWoolfenden/pike/releases/download/v0.3.44/pike_0.3.44_linux_arm64.tar.gz"
        sha256 "e732cab52a7d35fe6c766d2f790fb1e17c559f65190cafeb56e3099698cd78b8"

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
