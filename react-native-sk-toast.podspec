require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name             = 'react-native-sk-toast'
  s.version          = package['version']
  s.summary          = package['description']
  s.license          = 'MIT'
  s.homepage         = 'https://github.com/muffinFactory/react-native-sk-toast'
  s.authors          = 'Shigi'
  s.source           = { :git => 'https://github.com/muffinFactory/react-native-sk-toast.git', :tag => s.version }
  s.source_files     = 'react-native-toast/**/*.{h,m}'
  s.requires_arc     = true
  s.platforms        = { :ios => "8.0", :tvos => "9.2" }
  s.dependency         'React'  
end
