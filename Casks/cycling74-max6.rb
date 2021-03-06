cask 'cycling74-max6' do
  version '6.1.7-140421'
  sha256 'deb3070e0161e074c7ee91861e06cfeec2c1dc85eb715e476797d026821c32c9'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com/Max#{version.sub('-','_').gsub('.','')}.dmg"
  name 'Cycling ‘74 Max'
  homepage 'https://cycling74.com'
  license :commercial

  pkg "Max #{version.sub(%r{^(\d+\.\d+).*},'\1')} Installer.pkg"

  uninstall :pkgutil => 'com.cycling74.Max*',
            :delete  => '/Applications/Max 6.1'
end
