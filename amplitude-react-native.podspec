require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name = "amplitude-react-native"
  s.version = package["version"]
  s.summary = package["description"]
  s.homepage = package["homepage"]
  s.license = package["license"]
  s.authors = package["author"]

  s.swift_version = "5.0"

  s.platforms = { :ios => "10.0" }
  s.source = { :git => "https://github.com/amplitude/Amplitude-ReactNative.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,mm,swift}"

  s.dependency "React-Core"
  s.dependency "Amplitude", "8.3.0"
end
