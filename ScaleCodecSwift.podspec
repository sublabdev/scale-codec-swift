Pod::Spec.new do |s|
  s.name             = 'ScaleCodecSwift'
  s.version          = '1.0.2'
  s.summary          = 'Pure Swift library for Substrate\'s SCALE codec.'
#
#  s.description      = <<-DESC
#                       DESC
  s.homepage         = 'https://github.com/TigranIsk/ScaleCodecSwift'
  s.license          = { :type => 'Apache 2.0', :file => 'LICENSE' }
  s.author           = { 'Tigran Iskandaryan' => 'tiger@sublab.dev' }
  s.source           = { :git => 'https://github.com/sublabdev/ScaleCodecSwift.git', :tag => s.version.to_s }
  s.ios.deployment_target = '13.0'
  s.source_files = 'ScaleCodecSwift/Classes/**/*'
  
  s.dependency 'BigInt'
end
