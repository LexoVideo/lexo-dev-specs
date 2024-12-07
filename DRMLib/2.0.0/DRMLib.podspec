#
# Be sure to run `pod lib lint DRMUtil.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DRMLib'
  s.version          = '2.0.0'
  s.summary          = 'A short description of DRMUtil.'
  s.swift_version    = '5.0'
  
# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/lexovideo/DRMUtil'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'paul' => 'paul4402.smith@gmail.com' }
  s.source          = { :http => "https://libs.lexo.video/ios-framework/DRMLib/2.0.0/DRMLib.xcframework.zip" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.static_framework = true
  s.ios.deployment_target = '13.0'

  # open this on local debug
  #s.source_files = 'DRMUtil/Classes/**/*'
  # close this on local debug
  s.vendored_frameworks = "DRMLib.xcframework"
  
  s.xcconfig = {
      'ENABLE_BITCODE' => 'NO',
  }

  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphoneos*]' => 'armv7 armv7s',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'armv7 armv7s',
    'SKIP_INSTALL' => 'NO',
    'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES'
  }
  s.user_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphoneos*]' => 'armv7 armv7s',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'armv7 armv7s'
  }
  
  # s.resource_bundles = {b
  #   'DRMUtil' => ['DRMUtil/Assets/*.png']
  # }

  s.dependency 'CryptoSwift', '>= 1.8.3'
end
