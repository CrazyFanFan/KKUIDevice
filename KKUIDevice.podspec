Pod::Spec.new do |s|
  s.name        = "KKUIDevice"
  s.version     = "0.0.5"
  s.summary     = "A Simple way to get iOS device info."
  s.description = <<-DESC
			A Simple way to get iOS device info. eg. Hardware string/device name
                   DESC

  s.homepage    = "https://github.com/CrazyFanFan/KKUIDevice"
  s.license     = "MIT"
  s.author      = { "Crazy凡" => "827799383@qq.com" }
  s.platform    = :ios, "8.0"
  s.source      = { :git => "https://github.com/CrazyFanFan/KKUIDevice.git", :tag => "#{s.version}" }
  s.framework   = "UIKit"
  s.requires_arc      = true
  s.static_framework  =  true

  s.subspec "ObjectiveC" do |cs|
    cs.source_files   = "KKUIDevice", "KKUIDevice/**/*.{h,m}"
    cs.dependency "KKUIDevice/Resources"
  end

  s.subspec "Swift" do |cs|
    cs.source_files   = "KKUIDevice-swift", "KKUIDevice-swift/**/*.{h,swift}"
    cs.dependency "KKUIDevice/Resources"
    cs.dependency "K3Base"
  end

  s.subspec "Resources" do |cs|
    cs.resource_bundles = { "KKUIDeviceBundle" => "Resources/*.{plist}"}
  end
end
