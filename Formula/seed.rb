class Seed < Formula
  desc "Plant the seeds of your directory tree 🌱"
  homepage "https://github.com/jpwallace22/seed"
  version "0.1.0"
  license "MIT"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jpwallace22/seed/releases/download/v#{version}/seed_#{version}_darwin_arm64.tar.gz"
      sha256 "YOUR_ARM64_CHECKSUM" # darwin_arm64
    else
      url "https://github.com/jpwallace22/seed/releases/download/v#{version}/seed_#{version}_darwin_amd64.tar.gz"
      sha256 "YOUR_AMD64_CHECKSUM" # darwin_amd64
    end
  end
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jpwallace22/seed/releases/download/v#{version}/seed_#{version}_linux_arm64.tar.gz"
      sha256 "YOUR_LINUX_ARM64_CHECKSUM" # linux_arm64
    else
      url "https://github.com/jpwallace22/seed/releases/download/v#{version}/seed_#{version}_linux_amd64.tar.gz"
      sha256 "YOUR_LINUX_AMD64_CHECKSUM" # linux_amd64
    end
  end

  def install
    bin.install "seed"
  end

  test do
    system "#{bin}/seed", "--version"
  rescue
    odie "Test failed. Please ensure seed is working correctly"
  end
end
