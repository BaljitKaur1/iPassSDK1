Pod::Spec.new do |s|
  s.name = 'iPassSDK1'
  s.module_name = 'iPassSDK1'
  s.version = '0.0.1'
  s.license = 'LICENSE'
  s.summary = 'Elegant HTTP Networking in Swift'
  s.homepage = 'https://github.com/BaljitKaur1/iPassSDK1.git'
  s.author = { 'BaljitKaur1' => 'baljitkaur@csgroupchd.com' }
  s.source = { :git => 'https://github.com/BaljitKaur1/iPassSDK1.git', :tag => s.version }
  s.platform = :ios, '13.0'
  s.ios.deployment_target = '13.0'
  s.requires_arc = true
  s.swift_version = '5.0'
  s.source_files = 'iPassSDK1/APIManager/*.swift', 'iPassSDK1/Sources/Apis.swift', 'iPassSDK1/Model/iPass/*.swift', 'iPassSDK1/Model/SocialMedia/*.swift', 'iPassSDK1/Model/PostData/*.swift', 'iPassSDK1/Model/KYC/*.swift'
end