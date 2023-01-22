# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ghalint < Formula
  desc "GitHub Actions linter"
  homepage "https://github.com/suzuki-shunsuke/ghalint"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/suzuki-shunsuke/ghalint/releases/download/v0.1.1/ghalint_0.1.1_darwin_amd64.tar.gz"
      sha256 "99c72ebe96b3801661d61cb95b7f677c366298aa113b0141dea7e348602a1ff4"

      def install
        bin.install "ghalint"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/suzuki-shunsuke/ghalint/releases/download/v0.1.1/ghalint_0.1.1_darwin_arm64.tar.gz"
      sha256 "ebdbad8815d44d139f42e46653b6e5aa372958c131dba05ebe152dab7a83b085"

      def install
        bin.install "ghalint"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/suzuki-shunsuke/ghalint/releases/download/v0.1.1/ghalint_0.1.1_linux_arm64.tar.gz"
      sha256 "1c2fc7fe5c97b3403982c6c990cc84bcc28bff074d4eae511dfec7834d1d9488"

      def install
        bin.install "ghalint"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/suzuki-shunsuke/ghalint/releases/download/v0.1.1/ghalint_0.1.1_linux_amd64.tar.gz"
      sha256 "ca0769943ac4356978f77359b4e4cae993d7321e88b50d05f89a0a6052650008"

      def install
        bin.install "ghalint"
      end
    end
  end

  test do
    system "#{bin}/ghalint --version"
  end
end
