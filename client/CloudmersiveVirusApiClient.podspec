#
# Be sure to run `pod lib lint CloudmersiveVirusApiClient.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = "CloudmersiveVirusApiClient"
    s.version          = "1.1.6"

    s.summary          = "virusapi"
    s.description      = <<-DESC
                         The Cloudmersive Virus Scan API lets you scan files and content for viruses and identify security issues with content.
                         DESC

    s.platform     = :ios, '7.0'
    s.requires_arc = true

    s.framework    = 'SystemConfiguration'

    s.homepage     = "https://github.com/Cloudmersive/Cloudmersive.APIClient.ObjectiveC.VirusScan"
    s.license      = "Proprietary"
    s.source       = { :git => "https://github.com/Cloudmersive/Cloudmersive.APIClient.ObjectiveC.VirusScan.git", :tag => "#{s.version}" }
    s.author       = { "Cloudmersive" => "support@cloudmersive.com" }

    s.source_files = 'client/CloudmersiveVirusApiClient/**/*.{m,h}'
    s.public_header_files = 'client/CloudmersiveVirusApiClient/**/*.h'


    s.dependency 'AFNetworking', '~> 3'
    s.dependency 'JSONModel', '~> 1.2'
    s.dependency 'ISO8601', '~> 0.6'
end

