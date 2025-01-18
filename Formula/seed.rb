class Seed < Formula
  desc "Plant the seeds of your directory tree 🌱"
  homepage "https://github.com/jpwallace22/seed"
  version "0.1.1"
  license "MIT"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jpwallace22/seed/releases/download/v#{version}/seed_#{version}_darwin_arm64.tar.gz"
      sha256 "dd10a456b3b8fe930a236a68d4eefb8ba08ae79186996c7d6e2570b25f5c2be9" # darwin_arm64
    else
      url "https://github.com/jpwallace22/seed/releases/download/v#{version}/seed_#{version}_darwin_amd64.tar.gz"
      sha256 "472c70aaca569b566250c619e8f8b9bd0562b12763e6b587273c4d7b45b60bb2" # darwin_amd64
    end
  end
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jpwallace22/seed/releases/download/v#{version}/seed_#{version}_linux_arm64.tar.gz"
      sha256 "774d243162ac2545a3dd7a7a894348fa5b2fc8d5093e1f563340388a3ac0eebe" # linux_arm64
    else
      url "https://github.com/jpwallace22/seed/releases/download/v#{version}/seed_#{version}_linux_amd64.tar.gz"
      sha256 "03a18d694e0b3abc9750308b2d91fc5ad470e9367c1d6953ffe5d9bee1a8dbe8" # linux_amd64
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
