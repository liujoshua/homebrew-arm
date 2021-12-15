class ArmGccBinAT9 < Formula
  desc "Pre-built GNU toolchain for Arm Cortex-M and Cortex-R processors"
  homepage "https://developer.arm.com/open-source/gnu-toolchain/gnu-rm"
  url "https://developer.arm.com/-/media/Files/downloads/gnu-rm/9-2019q4/gcc-arm-none-eabi-9-2019-q4-major-mac.tar.bz2"
  version "9-2019-q4-major"
  sha256 "1249f860d4155d9c3ba8f30c19e7a88c5047923cea17e0d08e633f12408f01f0"

  revision 1

  bottle do
    root_url "https://developer.arm.com/-/media/Files/downloads/gnu-rm/9-2019q4/gcc-arm-none-eabi-9-2019-q4-major-mac.tar.bz2"
    sha256 cellar: :any_skip_relocation, big_sur:  "8d013292bfbd13c7c7b6427c3d080f63db8980f360748af3163eac1e452dd8bd"
    sha256 cellar: :any_skip_relocation, catalina: "1911e7454e7de3dd380b69db5efd01bead63736da1807a0b3045c64a3b932b5a"
  end

  keg_only <<~EOS
    it may interfere with another version of arm-gcc-bin.
    This is useful if you want to have multiple versions installed
  EOS

  def install
    bin.install Dir["bin/*"]
    prefix.install Dir["arm-none-eabi", "lib", "share"]
  end
end
