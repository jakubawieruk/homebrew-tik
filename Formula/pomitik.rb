class Pomitik < Formula
  desc "A command-line countdown timer with Pomodoro sessions"
  homepage "https://github.com/jakubawieruk/pomitik"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/jakubawieruk/pomitik/releases/download/v0.3.0/pomitik-aarch64-apple-darwin.tar.gz"
      sha256 "72e37b5007b94f7e783170d1c85afbbe5d06f5d2214b76c20c48ef3c752f47bd"
    end

    on_intel do
      url "https://github.com/jakubawieruk/pomitik/releases/download/v0.3.0/pomitik-x86_64-apple-darwin.tar.gz"
      sha256 "30d5d899ee955d0161db49c249e22bc01770ac151dda6bb6d8fd9989d60a98a3"
    end
  end

  def install
    bin.install "tik"
  end

  test do
    assert_match "A command-line countdown timer", shell_output("#{bin}/tik --help")
  end
end
