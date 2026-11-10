class Hlog < Formula
  desc "Log for humans: append, tail and grep your hlog.dev log from the terminal"
  homepage "https://hlog.dev"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/siddharthsingh89/hlog-cli/releases/download/v0.4.1/hlog-aarch64-apple-darwin.tar.gz"
      sha256 "0cf34f6aecef8cb36fca4a369f640ba0bd17f800f61831c4cb41647ef1c9745f"
    end
    on_intel do
      url "https://github.com/siddharthsingh89/hlog-cli/releases/download/v0.4.1/hlog-x86_64-apple-darwin.tar.gz"
      sha256 "1ecf5382e02b190df48a3d651dc40e4411b50f71f87ca49db004a237345df3e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/siddharthsingh89/hlog-cli/releases/download/v0.4.1/hlog-aarch64-unknown-linux-musl.tar.gz"
      sha256 "88ad3ccfad8002a1123f3303d8c3b811463159eb7b6f348b300f87bd9ebd330f"
    end
    on_intel do
      url "https://github.com/siddharthsingh89/hlog-cli/releases/download/v0.4.1/hlog-x86_64-unknown-linux-musl.tar.gz"
      sha256 "27e90e0d8364dd5771864b560dd813ff57f9d59240e696e02cedd981d4f7aa3e"
    end
  end

  def install
    bin.install "hlog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hlog --version")
  end
end
