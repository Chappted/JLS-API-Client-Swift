Pod::Spec.new do |s|

  s.name         = "JLS-API-Client"
  s.version      = "0.1.0"
  s.summary      = "JLS:API Client written in Swift for Apple platforms."

  s.description  = <<-DESC
    JLS:API Client written in Swift for Apple platforms.
                   DESC

  s.homepage     = "https://github.com/Chappted/JLS-API-Client-Swift"
  s.license      = { :type => "MIT", :file => "LICENSE.md" }

  s.author             = { "Cihat Gündüz" => "cocoapods@cihatguenduez.de" }
  s.social_media_url   = "https://twitter.com/Dschee"

  s.ios.deployment_target = "11.0"
  s.osx.deployment_target = "10.13"
  s.tvos.deployment_target = "11.0"

  s.source       = { :git => "https://github.com/Chappted/JLS-API-Client-Swift.git", :tag => "#{s.version}" }
  s.source_files = "Sources", "Sources/**/*.swift"
  s.framework    = "Foundation"

  # s.dependency "HandyUIKit", "~> 1.6"
  # s.dependency "HandySwift", "~> 2.5"

end
