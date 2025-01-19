class Seed < Formula
  desc "Plant the seeds of your directory tree 🌱"
  homepage "https://github.com/jpwallace22/seed"
  version "0.1.3"
  license "MIT"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jpwallace22/seed/releases/download/v#{version}/seed_#{version}_darwin_arm64.tar.gz"
      sha256 "81bdec26d09bc41634eaeb4cbd3a722fd1905e6e29c5099d7df8f97332a5bf1f" # darwin_arm64
    else
      url "https://github.com/jpwallace22/seed/releases/download/v#{version}/seed_#{version}_darwin_amd64.tar.gz"
      sha256 "2c496a38d7fc2b224b96c43f820a6eb07b0873fef2439f95f0935d30006439c9" # darwin_amd64
    end
  end
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jpwallace22/seed/releases/download/v#{version}/seed_#{version}_linux_arm64.tar.gz"
      sha256 "c06b475b2274ed516bbc79f22dcfd6d088698d6ab764d1bba58475228a7ae0a5" # linux_arm64
    else
      url "https://github.com/jpwallace22/seed/releases/download/v#{version}/seed_#{version}_linux_amd64.tar.gz"
      sha256 "a4bc7491b6e8f78b2177bc5d0ccc36dc65222b623ec2378ffdb468a4ff87b977" # linux_amd64
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
