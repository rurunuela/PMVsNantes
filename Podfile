# Uncomment this line to define a global platform for your project
# platform :ios, '9.0'
post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['SWIFT_VERSION'] = '2.3' # or '3.0'
    end
  end
end
target 'PMV' do
  # Comment this line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!
pod 'Alamofire', '~> 3.0.0'
pod 'SwiftyJSON', '~> 2.3.0'  
pod 'RealmSwift' 
pod 'Charts'
pod 'Charts/Realm'
# Pods for PMV

end
