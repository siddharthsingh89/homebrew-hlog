class Hlog < Formula
  desc "Log for humans: append, tail and grep your hlog.dev log from the terminal"
  homepage "https://hlog.dev"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/siddharthsingh89/hlog-cli/releases/download/v0.4.2/hlog-aarch64-apple-darwin.tar.gz"
      sha256 "9724aa812069451e901a28bab0315c8a0434c4a3a0e666621ef82d8a45b220ed"
    end
    on_intel do
      url "https://github.com/siddharthsingh89/hlog-cli/releases/download/v0.4.2/hlog-x86_64-apple-darwin.tar.gz"
      sha256 "8d2597b5daef06102f58d5ea979df37c0a2737e35b642d1746c5b509c0c6fc96"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/siddharthsingh89/hlog-cli/releases/download/v0.4.2/hlog-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b5af0c7acdac10b3e0fb3b63b77d9c64e83921e9dee31039eba0830282fa5e8f"
    end
    on_intel do
      url "https://github.com/siddharthsingh89/hlog-cli/releases/download/v0.4.2/hlog-x86_64-unknown-linux-musl.tar.gz"
      sha256 "13098107b81ba5fdc31bb4c8854acd9c4ef3b2120be58336fbd7c49e206fcddc"
    end
  end

  def install
    bin.install "hlog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hlog --version")
  end
end
