Pod::Spec.new do |s|
  s.name             = 'ScaleCodecSwift'
  s.version          = '1.0.0'
  s.summary          = 'Pure Swift library for Substrate\'s SCALE codec.'
  s.homepage         = 'https://github.com/sublabdev/scale-codec-swift'
  s.license          = { :type => 'Apache 2.0', :file => 'LICENSE' }
  s.author           = { 'Substrate Laboratory' => 'info@sublab.dev' }
  s.source           = { :git => 'https://github.com/sublabdev/scale-codec-swift.git', :tag => s.version.to_s }
  s.ios.deployment_target = '13.0'
  s.osx.deployment_target = '10.15'
  s.source_files = 'Sources/ScaleCodecSwift/**/*'
  s.dependency 'CommonSwift', '1.0.0'
  s.dependency 'BigInt', '5.0.0'
end
