Pod::Spec.new do |s|
  s.name = "BaiduMobStat"
  s.version = "2.1"
  s.summary = "A SDK for BaiduMobStat."
  s.description = <<-DESC
A SDK for BaiduMobStat.
DESC
  s.homepage = "https://gitcafe.com/Jiuyan/BaiduMobStat"
  s.license = {
                      :type => 'Commercial',
                      :text => <<-LICENSE
Commercial license.
LICENSE
                   }
  s.author = "Baidu"
  s.source = { :git => "https://github.com/KalicyZhou/BaiduMobStat" , :tag => "v#{s.version.to_s}" }
  s.platform = :ios
  s.source_files = '*.{h,m}'
  s.vendored_libraries = 'libBaiduMobStat.a'
  s.library = 'stdc++', 'z.1.2.5', 'BaiduMobStat'
  s.frameworks = 'Adsupport', 'CoreLocation', 'SystemConfiguration', 'CoreTelephony'
  s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/BaiduMobStat/Release$(EFFECTIVE_PLATFORM_NAME)"' }
end
