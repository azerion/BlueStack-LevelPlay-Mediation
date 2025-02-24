Pod::Spec.new do |s|

s.authors = 'Azerion'
s.name = 'BlueStackLevelPlayMediationAdapter'
s.version = '5.1.1.0'
s.static_framework = true
s.license = 'MIT'
s.platform = :ios, '12.2'
s.summary = 'BlueStack adapter used for mediation with the Unity LevelPlay'
s.homepage = "https://developers.bluestack.app/"
s.swift_version = '5'
s.source_files = ["BlueStackLevelPlayMediationAdapter.xcframework/*/*/Headers/*.{h,m,swift}"]

s.source = { :git => 'https://github.com/azerion/BlueStack-LevelPlay-Mediation.git', :tag => "#{s.version}" }
s.documentation_url = 'https://developers.bluestack.app/ios/mediation/secondary/unity-levelplay'
s.vendored_frameworks = "BlueStackLevelPlayMediationAdapter.xcframework"
s.ios.deployment_target = '12.2'

s.dependency 'BlueStack-SDK', '>=5.1.1'
s.dependency 'IronSourceSDK', '8.5.0'

s.pod_target_xcconfig =
{
  'VALID_ARCHS' => 'arm64 arm64e armv7 armv7s x86_64',
  'VALID_ARCHS[sdk=iphoneos*]' => 'arm64 arm64e armv7 armv7s',
  'VALID_ARCHS[sdk=iphonesimulator*]' => 'arm64 arm64e x86_64',
  'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386'
}
  
end
  
