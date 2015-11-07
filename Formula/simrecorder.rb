class Simrecorder < Formula
  desc "GIF recorder for iOS simulator"
  homepage "https://github.com/giginet/SimRecorder"
  url "https://github.com/giginet/SimRecorder.git", :tag => "1.0", 
                                                    :shallow => false
  head "https://github.com/giginet/SimRecorder.git"

  depends_on :xcode => ["7.1", :build]
  depends_on 'carthage' => :build

  def install
    system "make", "prefix_install", "PREFIX=#{prefix}"
  end
end
