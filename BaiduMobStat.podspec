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
  s.source       = { :git => "https://github.com/KalicyZhou/BaiduMobStat" , :tag => "v#{s.version.to_s}" }

  s.platform     = :ios, '4.0'
  s.source_files = '*.{h,m}'
  s.vendored_libraries = 'libBaiduMobStat.a'
  s.library = 'BaiduMobStat'
  s.frameworks = 'Adsupport'
end
