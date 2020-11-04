Pod::Spec.new do |spec|

  spec.name         = "DXUIKit"
  spec.version      = "0.0.2"
  spec.summary      = "A short description of DXUIKitSDK"
  spec.description  = "desc"
  spec.homepage     = "http://github.com/ilmeeself/DXUIKit"
  spec.license      = "MIT (example)"
  spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  spec.author             = { "ilmeeself" => "ilmeeself@163.com" }
  spec.source       = { :git => "http://github.com/ilmeeself/DXUIKit.git", :tag => "#{spec.version}" }
  spec.platform     = :ios, "10.0"
  #spec.source_files = "DXUIKit/*.{h,m,swift}"
  #头文件
  # 依赖库
  spec.dependency   "SnapKit" , "~> 4.0.0"

end
