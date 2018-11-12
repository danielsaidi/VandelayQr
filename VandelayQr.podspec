Pod::Spec.new do |s|
  s.name             = 'VandelayQr'
  s.version          = '0.7.5'
  s.summary          = 'VandelayQr adds QR code support to Vandelay.'

  s.description      = <<-DESC
VandelayQr adds QR code support to Vandelay. You can use it to import
data by scanning QR codes.
                       DESC

  s.homepage         = 'https://github.com/danielsaidi/VandelayQr'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Daniel Saidi' => 'daniel.saidi@gmail.com' }
  s.source           = { :git => 'https://github.com/danielsaidi/VandelayQr.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/danielsaidi'

  s.ios.deployment_target = '9.0'

  s.source_files = 'VandelayQr/**/*.{swift}'
  
  s.dependency 'Vandelay', '0.8.1'
  s.dependency 'QRCodeReader.swift'
end
