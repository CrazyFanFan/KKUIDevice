Pod::Spec.new do |s|
  s.name        = "KKUIDevice"
  s.version     = "1.0.1"
  s.summary     = "A Simple way to get iOS device info."
  s.description = <<-DESC
			A Simple way to get iOS device info. eg. Hardware string\device name
                   DESC

  s.homepage    = "https://github.com/CrazyFanFan/KKUIDevice"
  s.license     = "MIT"
  s.author      = { "Crazy凡" => "827799383@qq.com" }
  s.source      = { :git => "https://github.com/CrazyFanFan/KKUIDevice.git", :tag => "#{s.version}" }
  s.framework   = "UIKit"

  s.platform    = :ios, "8.0"
  s.swift_version = '5.0'

  s.requires_arc  = true

  s.source_files   = "Sources/KKUIDevice", "KKUIDevice/**/*.{swift}"
end
