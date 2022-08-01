Pod::Spec.new do |s|
  s.name             = 'POD_TEST_FRAMEWORK_K'
  s.version          = '1.0.0'
  s.summary          = 'test framework pod integration'
 
  s.description      = 'POD_TEST_FRAMEWORK_K' 
  s.homepage         = 'https://github.com/vishwas-mukund-zc/TestFrameworkPodInegration/''
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Zoomcar' => 'vishwas.mukund@zoomcar.com' }
  s.source           = { :http => 'https://github.com/vishwas-mukund-zc/TestFrameworkPodInegration/raw/main/1.0.0/TestFrameworkPodInegration.zip'}
  s.ios.deployment_target = '12.0'
  s.source_files = 'ZMS/**/*.{swift}'
  s.resource_bundle = {
      'ZMSBundle' => ['ZMS/**/*.{xcassets,png,ttf,gif,json}']
  }

  s.swift_version = '5.0'
  s.static_framework = true
  s.dependency 'MaterialComponents/ShadowLayer', '124.2.0'
  s.dependency 'MaterialComponents/ShadowElevations', '124.2.0'
  s.dependency 'MaterialComponents/TextFields', '124.2.0'
  s.dependency 'GoogleMaps', '6.0.1'
  s.dependency 'GooglePlaces', '6.0.0'
  s.dependency 'Analytics'
  # s.dependency 'zmsmpp', :path => '~/ZoomCar/ZmsMppDemo/mobile-zms-mpp/zmsmpp'  
   
  s.frameworks = 'Foundation', 'UIKit', 'CoreData'
  s.vendored_frameworks = 'ZMS/zmsKmm.framework'

  s.xcconfig = {
    "LIBRARY_SEARCH_PATHS" => "\"$(PODS_ROOT)/cocos-binary\"",
    "HEADER_SEARCH_PATHS" => "\" $(PODS ROOT)/cocos-binary/include/**\"",
    "OTHER_LDFLAGS" => "-lsqlite3"
   }
  
end
