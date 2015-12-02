#
# Be sure to run `pod lib lint FFGlobalAlertController.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "FFGlobalAlertController"
  s.version          = "1.0.2"
  s.summary          = "FFGlobalAlertController is a Category on UIAlertController that provides global show method in a second UIWindow."
  s.description      = <<-DESC
                       Provides a Show method that creates a UIWindow with a transparent UIViewController and presents the UIAlertController on it.
                       Useful for something like networking code that needs to show an Alert but has no idea what the current view controllers on screen.
                       DESC
  s.homepage         = "https://github.com/agilityvision/FFGlobalAlertController"
  s.license          = 'MIT'
  s.author           = { "Eric Larson" => "eric@agilityvision.com" }
  s.source           = { :git => "https://github.com/NikolaySohryakov/FFGlobalAlertController.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/agilityvision'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
end
