#
# Be sure to run `pod lib lint Flutter.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Flutter'
  s.version          = '0.1.0'
  s.summary          = 'XXXXXXX'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/chenhang03/Flutter'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'hangisnice' => 'hangisnice@gmail.com' }
  s.source       = { :git => "", :tag => "#{s.version}" }

  s.ios.deployment_target = '8.0'
  s.dependency 'AFNetworking'

  s.ios.vendored_frameworks = 'App.framework', 'Flutter.framework'


end
