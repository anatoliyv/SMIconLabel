Pod::Spec.new do |s|
  s.name         = "SMIconLabel"
  s.version      = "0.5.0"
  s.summary      = "UILabel with image placed on the left or right side"
  s.description  = <<-DESC
                   UILabel with possibility to place small icon on the left or on the right side.
                   Take a look at preview image or build smaple app to see how it works.
                   DESC
  s.homepage     = "https://github.com/anatoliyv/SMIconLabel"
  s.license      = "MIT"
  s.author             = { "Anatoliy Voropay" => "anatoliy.voropay@gmail.com" }
  s.platform     = :ios, "9.0"
  s.ios.deployment_target = "9.0"
  s.source       = { :git => "https://github.com/anatoliyv/SMIconLabel.git", :tag => "v.0.5.0" }
  s.source_files  = "SMIconLabel/*"
  s.framework  = "UIKit"
  s.requires_arc = true
end
