source 'https://github.com/CocoaPods/Specs.git'

platform :osx, '10.10'

pod 'Bedrock/Core', :git => 'https://github.com/nickbolton/PBBedrock.git', :branch=>'master'
pod 'Bedrock/AutoLayout', :git => 'https://github.com/nickbolton/PBBedrock.git', :branch=>'master'

target 'UIKitExample-iOS', :exclusive => false do
    platform :ios, '8.0'

    pod 'Bedrock/Core', :git => 'https://github.com/nickbolton/PBBedrock.git', :branch=>'master'
    pod 'Bedrock/AutoLayout', :git => 'https://github.com/nickbolton/PBBedrock.git', :branch=>'master'
end

inhibit_all_warnings!

post_install do |installer_representation|
  installer_representation.project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['CODE_SIGN_IDENTITY'] = 'iPhone Developer'
    end
  end
end
