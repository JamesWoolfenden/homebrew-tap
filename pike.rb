# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pike < Formula
  desc "Pike is a tool for determining the permissions or policy required for IAC code"
  homepage "https://github.com/JamesWoolfenden/pike#readme"
  version "0.3.9"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.3.9/pike_0.3.9_darwin_amd64.tar.gz"
      sha256 "085f2bc79b5fc47c82dda8337239ad5d649da00f0579a1e2b3d6be7bf9e770dc"

      def install
        bin.install "pike"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.3.9/pike_0.3.9_darwin_arm64.tar.gz"
      sha256 "ecfd80b327b4f98fb8878517d79f96c253361ca0afb7344b9cd4ab4a4260085b"

      def install
        bin.install "pike"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.3.9/pike_0.3.9_linux_amd64.tar.gz"
      sha256 "8cc1a492377d47cbd8b9b15d150429d0ef39dc59d35ab40069c303197b3b1e14"

      def install
        bin.install "pike"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/JamesWoolfenden/pike/releases/download/v0.3.9/pike_0.3.9_linux_arm64.tar.gz"
      sha256 "1b5127d0fb088a2a5801e73fe7c8b6d24aa767cb45c6dc6cca72b734b0c43375"

      def install
        bin.install "pike"
      end
    end
  end

  test do
    system "#{bin}/pike", "--help"
  end
end
