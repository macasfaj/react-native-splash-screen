require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-splash-screen"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.author       = 'crazycodeboy'
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.platform     = :ios, "7.0"
  s.source       = { :path => "." }
  s.source_files  = "ios/*.{h,m}"
  s.dependency "React-Core"
end
