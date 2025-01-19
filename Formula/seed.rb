class Seed < Formula
  desc "Plant the seeds of your directory tree 🌱"
  homepage "https://github.com/jpwallace22/seed"
  version "0.1.2"
  license "MIT"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jpwallace22/seed/releases/download/v#{version}/seed_#{version}_darwin_arm64.tar.gz"
      sha256 "234657a18cdea46de20601ff3db490290ab51bb8328fb2d626a4c848862e82a4" # darwin_arm64
    else
      url "https://github.com/jpwallace22/seed/releases/download/v#{version}/seed_#{version}_darwin_amd64.tar.gz"
      sha256 "faae9cfb100cbb5ba3153971b04a935af76a391d3fc295670a353065516acb0d" # darwin_amd64
    end
  end
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jpwallace22/seed/releases/download/v#{version}/seed_#{version}_linux_arm64.tar.gz"
      sha256 "594749b65f0b7c758ac38e3d21c89a20f4b4cc16684cd2173067f623a5152bb6" # linux_arm64
    else
      url "https://github.com/jpwallace22/seed/releases/download/v#{version}/seed_#{version}_linux_amd64.tar.gz"
      sha256 "5072b2a6dbc3ac0b5f59af6d28f1dab73530a63395d12e7958c2289899d5dff2" # linux_amd64
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
