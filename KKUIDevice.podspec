Pod::Spec.new do |s|
  s.name         = "KKUIDevice"
  s.version      = "0.0.3"
  s.summary      = "A Simple way to get iOS device info."
  s.description  = <<-DESC
			A Simple way to get iOS device info. e.g. Hardware string/device name
                   DESC

  s.homepage     = "https://github.com/CrazyFanFan/KKUIDevice"
  s.license      = "MIT"
  s.author             = { "Crazy凡" => "827799383@qq.com" }
  s.platform   	   = :ios, "8.0"
  s.source       = { :git => "https://github.com/CrazyFanFan/KKUIDevice.git", :tag => "#{s.version}" }
  s.source_files  = "KKUIDevice", "KKUIDevice/**/*.{h,m}"
  s.exclude_files = "Classes/Exclude"
  s.framework    = "UIKit"
  s.requires_arc = true
end
