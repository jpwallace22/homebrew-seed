class Seed < Formula
  desc "Plant the seeds of your directory tree 🌱"
  homepage "https://github.com/jpwallace22/seed"
  version "0.1.1"
  license "MIT"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jpwallace22/seed/releases/download/v#{version}/seed_#{version}_darwin_arm64.tar.gz"
      sha256 "d4d1445cbbe809feeb6f5f7f9cfad61c2fe93a9be4c33c8f72e5b816f6d9e761" # darwin_arm64
    else
      url "https://github.com/jpwallace22/seed/releases/download/v#{version}/seed_#{version}_darwin_amd64.tar.gz"
      sha256 "f6b072fd1e533b372a45d1e2c31f8fa07c8408de273da55c365a3a3565aa3704" # darwin_amd64
    end
  end
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jpwallace22/seed/releases/download/v#{version}/seed_#{version}_linux_arm64.tar.gz"
      sha256 "6556ea36dc83d7b5795f21e39703b04383fdcdea49d1e6282d0b71551ef41e3b" # linux_arm64
    else
      url "https://github.com/jpwallace22/seed/releases/download/v#{version}/seed_#{version}_linux_amd64.tar.gz"
      sha256 "3016ab76b9f929c2df469905eef329a7bb561394996c2aebfbadee1cc73d7bf7" # linux_amd64
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
