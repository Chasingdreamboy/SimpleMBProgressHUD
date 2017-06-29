#
# Be sure to run `pod lib lint SimpleMBProgressHUD.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SimpleMBProgressHUD'
  s.version          = '0.0.1'
  s.summary          = 'A short description of SimpleMBProgressHUD.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
The MBProgressHUD for SDK.
                       DESC

  s.homepage         = 'https://github.com/Chasingdreamboy/SimpleMBProgressHUD'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'EriceWang' => 'wangerdong@treefinance.com.cn' }
  s.source           = { :git => 'https://github.com/Chasingdreamboy/SimpleMBProgressHUD.git', :tag => s.version.to_s }


  s.ios.deployment_target = '8.0'

  s.source_files = 'SimpleMBProgressHUD/MBProgressHUD/**/*','SimpleMBProgressHUD/MBProgressHUD+Expand/**/*'
  s.public_header_files = 'SimpleMBProgressHUD/MBProgressHUD/**/*.h','SimpleMBProgressHUD/MBProgressHUD+Expand/**/*.h'
  s.frameworks = 'UIKit'
  s.dependency 'SimpleFontAwesomeKit'
end
