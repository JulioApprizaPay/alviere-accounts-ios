Pod::Spec.new do |s|
  s.name              = 'AccountsApprizaPay'
  s.version           = '0.9.20'
  s.author            = { 'Julio Torres' => 'julio.torres@apprizapay.com' }
  s.license           = { :type => 'Commercial', :text => 'By downloading or using all Alviere SDKs, You agree to the Alviere Master Services Agreement and acknowledge that such terms govern Your use of and access to all SDKs.' }
  s.homepage          = 'https://alviere.com/'
  s.source            = { :http => "https://github.com/JulioApprizaPay/alviere-accounts-ios/releases/download/#{s.version.to_s}/AccountsSDK.xcframework.zip", :sha256 => '793e6e1b9ff6be0853bb86e85ff2e776dbd695247cfde8b9cd9131a68c007ca5' }
  s.summary           = 'The mobile Accounts Alviere SDK.'
  s.platform          = :ios, '11.0'
  s.ios.frameworks    = 'AudioToolbox', 'AVFoundation', 'CoreGraphics', 'CoreMedia', 'CoreServices', 'CoreVideo', 'Foundation', 'ImageIO', 'QuartzCore', 'Security', 'UIKit'
  s.ios.vendored_frameworks = 'AccountsSDK.xcframework'
  s.dependency 'AlCore', '0.9.20'
  s.dependency 'AlCamera', '1.0.6'
end