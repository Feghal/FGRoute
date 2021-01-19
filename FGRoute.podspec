#
# Be sure to run `pod lib lint FGRoute.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'FGRoute'
  s.version          = '1.0.7'
  s.summary          = 'FGRoute helps developers to get rid of dealing with WiFi interfaces.'
  s.platform         = :ios, '8.0'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
FGRoute is library to help developers get info from wifi interfaces, such as connected wifi SSID, route ip address, device local ip address etc.
                       DESC

  s.homepage         = 'https://github.com/Feghal/FGRoute'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Arthur Sahakyan' => 'artursahakyan1996@gmail.com' }
  s.source           = { :git => 'https://github.com/Feghal/FGRoute.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'FGRoute/Classes/**/*'

  s.public_header_files = 'FGRoute/Classes/**/FGRoute.h'
end
