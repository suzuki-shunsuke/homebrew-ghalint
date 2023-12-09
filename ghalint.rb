# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ghalint < Formula
  desc "GitHub Actions linter"
  homepage "https://github.com/suzuki-shunsuke/ghalint"
  version "0.2.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/suzuki-shunsuke/ghalint/releases/download/v0.2.8/ghalint_0.2.8_darwin_arm64.tar.gz"
      sha256 "5c8565f947d2c676b7e7aae36b355d878a6a82ffdd60980ab5055d29db32eef6"

      def install
        bin.install "ghalint"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/suzuki-shunsuke/ghalint/releases/download/v0.2.8/ghalint_0.2.8_darwin_amd64.tar.gz"
      sha256 "0e04e631a330bc4d7c272a5bdb72c888a0eb13b58f1aaba1925c9555dedae797"

      def install
        bin.install "ghalint"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/suzuki-shunsuke/ghalint/releases/download/v0.2.8/ghalint_0.2.8_linux_arm64.tar.gz"
      sha256 "73ca7209b17f3f51cc3dc923186e282bb25a3e9280ca62544dd2086ab908ff11"

      def install
        bin.install "ghalint"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/suzuki-shunsuke/ghalint/releases/download/v0.2.8/ghalint_0.2.8_linux_amd64.tar.gz"
      sha256 "f649b3fc3af8413f847305d30c73034cb3ff66ed117352d1bb8827c58c50950a"

      def install
        bin.install "ghalint"
      end
    end
  end

  test do
    system "#{bin}/ghalint --version"
  end
end
