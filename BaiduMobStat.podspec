Pod::Spec.new do |s|
  s.name         = "BaiduMobStat"
  s.version      = "2.1"
  s.summary      = "A SDK for BaiduMobStat."
  s.description  = <<-DESC
                      A SDK for BaiduMobStat.
                      DESC
  s.homepage     = "https://github.com/KalicyZhou/BaiduMobStat"
  s.license      = {
                      :type => 'Commercial',
                      :text => <<-LICENSE
                                  Commercial license.
                                  LICENSE
                   }
  s.author       = "Baidu"
  s.source       = { :git => "git@github.com:KalicyZhou/BaiduMobStat.git" , :tag => "v#{s.version.to_s}" }

  s.platform     = :ios, '4.0'
  s.source_files = '*.{h,m}'
  s.preserve_paths = 'libBaiduMobStat.a'
  s.library = 'stdc++', 'z.1.2.5', 'BaiduMobStat'
  s.frameworks = 'CoreLocation', 'SystemConfiguration', 'CoreTelephony'
  s.xcconfig  =  { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/BaiduMobStat/Release$(EFFECTIVE_PLATFORM_NAME)"' }
end
