platform :ios, '9.0'

target 'EventLogginApp' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  
  pod "RealmSwift"
  pod "Swinject"
  pod "SwinjectAutoregistration"
  
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings["IPHONEOS_DEPLOYMENT_TARGET"] = "11.0"
    end
  end
end
