Pod::Spec.new do |s|

  	s.name        = 'DXUIKit'

  	s.version     = '0.0.9'

  	s.license     = 'MIT'

  	s.summary     = 'desc for dx kit'

  	s.homepage    = 'https://github.com/ilmeeself/DXUIKit'

  	s.author      = { 'ilmeeself' => 'ilmeeself@163.com' }

	s.source      = { :git => "https://github.com/ilmeeself/DXUIKit.git", :tag => "#{s.version}" }

	s.dependency  "SnapKit" , "~> 4.0.0"

	s.swift_version = '5.0'

	s.ios.deployment_target = '10.0'

	s.source_files = 'Core/*.swift'

	
	s.resource_bundles = {
    		'Source' => ['Source/*.{png}']
  	}
  	

end