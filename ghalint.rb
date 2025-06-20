# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ghalint < Formula
  desc "GitHub Actions linter"
  homepage "https://github.com/suzuki-shunsuke/ghalint"
  version "1.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/suzuki-shunsuke/ghalint/releases/download/v1.5.1/ghalint_1.5.1_darwin_amd64.tar.gz"
      sha256 "112e4b35c5abc3e92ec08a7f3ff583909f65bb5c9e649453b1fed139b43c4636"

      def install
        bin.install "ghalint"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/suzuki-shunsuke/ghalint/releases/download/v1.5.1/ghalint_1.5.1_darwin_arm64.tar.gz"
      sha256 "f65636894e3e98b2413ea8bdcff80fd7ddd661741000f6566edbe157de079be4"

      def install
        bin.install "ghalint"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/suzuki-shunsuke/ghalint/releases/download/v1.5.1/ghalint_1.5.1_linux_amd64.tar.gz"
      sha256 "e791009d9361c8f0f0d2e2b9b67d428fe2dddc6694cbfec9954e2502a8e0e0ff"
      def install
        bin.install "ghalint"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/suzuki-shunsuke/ghalint/releases/download/v1.5.1/ghalint_1.5.1_linux_arm64.tar.gz"
      sha256 "67300713993ee6fc62ad72b6495d0a0b0002a6b3603e1bc49e4bf9f11c4b3e0e"
      def install
        bin.install "ghalint"
      end
    end
  end

  test do
    system "#{bin}/ghalint --version"
  end
end
