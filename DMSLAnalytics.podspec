#
# Be sure to run `pod lib lint DMSLAnalytics.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DMSLAnalytics'
  s.version          = '0.3.0'
  s.summary          = 'TODO: summary...'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: description...
                       DESC

  s.homepage         = 'https://github.com/dmsl1805/Analytics'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'dmsl1805' => 'dmytro.shulzhenko@gen.tech' }
  s.source           = { :git => 'https://github.com/dmsl1805/Analytics.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'
  s.swift_version = '4.0'
  
  s.source_files = 'DMSLAnalytics/Classes/**/*'
  
  s.static_framework = true
  
  s.dependency 'Firebase/Analytics'
  s.dependency 'FBSDKCoreKit'
  s.dependency 'Amplitude-iOS'
  s.dependency 'AppsFlyerFramework'
  s.dependency 'Tagged'
  s.dependency 'RxSwift'
  s.dependency 'RxViewController'

end
