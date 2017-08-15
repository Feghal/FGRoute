#
# Be sure to run `pod lib lint FGRoute.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'FGRoute'
  s.version          = '0.1.0'
  s.summary          = 'FGRoute is library to help developers get info from wifi interfaces.'
  s.platform         = :ios, '8.3'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
FGRoute is library to help developers get info from wifi interfaces, such as get connected wifi SSID, route ip address, device local ip address etc.
                       DESC

  s.homepage         = 'https://github.com/Feghal/FGRoute'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'arturshakyan1996@gmail.com' => 'arturshakyan1996@gmail.com' }
  s.source           = { :git => 'https://github.com/Feghal/FGRoute.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'FGRoute/Classes/**/*'
  
  # s.resource_bundles = {
  #   'FGRoute' => ['FGRoute/Assets/*.png']
  # }

  s.public_header_files = 'FGRoute/Classes/**/FGRoute.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
