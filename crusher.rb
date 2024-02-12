# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Crusher < Formula
  desc "crusher is a utility bigtable applications"
  homepage "https://github.com/JamesWoolfenden/crusher#readme"
  version "0.0.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JamesWoolfenden/crusher/releases/download/v0.0.5/crusher_0.0.5_darwin_arm64.tar.gz"
      sha256 "8bc5606ad2d1ec8e70d9b612f6c9f465004628ecd84950fdb80e9a878dbbcf57"

      def install
        bin.install "crusher"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/JamesWoolfenden/crusher/releases/download/v0.0.5/crusher_0.0.5_darwin_amd64.tar.gz"
      sha256 "89ca1a7e1a0eda0d2454aa01d71f42363745506fd915416f90ef84dd0ca7f64a"

      def install
        bin.install "crusher"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/JamesWoolfenden/crusher/releases/download/v0.0.5/crusher_0.0.5_linux_amd64.tar.gz"
      sha256 "39ae31ca9f98045ef74d6f3afe10bf0ce33d3959d429c5bb74014df5bc2f09c4"

      def install
        bin.install "crusher"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/JamesWoolfenden/crusher/releases/download/v0.0.5/crusher_0.0.5_linux_arm64.tar.gz"
      sha256 "489b8f7e46f3a5bcd3855df27e17419fa1ba73155bc51e42a222bafe364a0fc6"

      def install
        bin.install "crusher"
      end
    end
  end

  test do
    system "#{bin}/crusher", "--help"
  end
end