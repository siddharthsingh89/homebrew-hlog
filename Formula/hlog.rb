class Hlog < Formula
  desc "Log for humans: append, tail and grep your hlog.dev log from the terminal"
  homepage "https://hlog.dev"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/siddharthsingh89/hlog-cli/releases/download/v0.4.0/hlog-aarch64-apple-darwin.tar.gz"
      sha256 "b80950e962240982485697062e6e0eaa84b22945504d2a89ae6fafd35b057af8"
    end
    on_intel do
      url "https://github.com/siddharthsingh89/hlog-cli/releases/download/v0.4.0/hlog-x86_64-apple-darwin.tar.gz"
      sha256 "67ab152e1a620f04a911fa4ac1e8b728bc011ff6b5984b15a68cdda0ef17f115"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/siddharthsingh89/hlog-cli/releases/download/v0.4.0/hlog-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8f717577b3171c9415f3a4511c2f151ac79311592acb68b3c3daebd87b8567ef"
    end
    on_intel do
      url "https://github.com/siddharthsingh89/hlog-cli/releases/download/v0.4.0/hlog-x86_64-unknown-linux-musl.tar.gz"
      sha256 "66dad45c7e4c4eda128cbb40a6004311bf02e8af209384e9241253bfca4c9e71"
    end
  end

  def install
    bin.install "hlog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hlog --version")
  end
end
