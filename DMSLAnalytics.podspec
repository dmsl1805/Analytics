#
# Be sure to run `pod lib lint DMSLAnalytics.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DMSLAnalytics'
  s.version          = '0.3.4'
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
  s.swift_version = '5.0'
    
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    
  s.static_framework = true
  
  s.subspec 'Core' do |ss|
    ss.source_files = 'DMSLAnalytics/Classes/Core/**/*.swift'
    ss.dependency 'Tagged'
  end
  
  s.subspec 'Rx' do |ss|
    ss.source_files = 'DMSLAnalytics/Classes/Rx/**/*.swift'
    ss.dependency 'RxSwift'
    ss.dependency 'RxViewController'
  end
  
  s.subspec 'Firebase' do |ss|
    ss.source_files = 'DMSLAnalytics/Classes/Tracking/Firebase/**/*.swift'
    ss.dependency 'Firebase/Analytics'
  end
  
  s.subspec 'Facebook' do |ss|
    ss.source_files = 'DMSLAnalytics/Classes/Tracking/Facebook/**/*.swift'
    ss.dependency 'FBSDKCoreKit'
  end
  
  s.subspec 'Amplitude' do |ss|
    ss.source_files = 'DMSLAnalytics/Classes/Tracking/Amplitude/**/*.swift'
    ss.dependency 'Amplitude-iOS'
  end
  
  s.subspec 'AppsFlyer' do |ss|
    ss.source_files = 'DMSLAnalytics/Classes/Tracking/AppsFlyer/**/*.swift'
    ss.dependency 'AppsFlyerFramework'
  end
  
  s.subspec 'Debug' do |ss|
    ss.source_files = 'DMSLAnalytics/Classes/Tracking/Debug/**/*.swift'
  end
  
end
