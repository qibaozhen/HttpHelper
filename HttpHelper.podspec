Pod::Spec.new do |s|
  s.name         = "HttpHelper"
  s.version      = "0.0.1"
  s.summary      = "这是一个小小的测试"
  s.homepage     = "https://github.com/qibaozhen/httpHelper"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "齐春宝" => "@qqbbzz@126.com" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/qibaozhen/httpHelper.git", :tag => "#{s.version}" }
  s.source_files  = "HttpHelper/HttpHelper/http/*.{h,swift}"

end
