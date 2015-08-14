Pod::Spec.new do |s|
  s.name         = "quantumgraph"
  s.version      = "1.6.2"
  s.summary      = "iOSSdk helps you to analyse user events in your app"

  s.homepage     = "http://docs.qgraph.io"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "quantumgraph" => "vivek@quantumgraph.com" }
  s.platform     = :ios, '6.0'
  s.source       = { :git => "https://github.com/quantumgraph/ios-sdk.git", :tag => "v#{s.version}"}
  s.default_subspec = "quantumgraph"  
  
  s.subspec 'quantumgraph' do |ss|
    ss.source_files = "quantumgraph/**/QGSdk.h"
    ss.vendored_library = "quantumgraph/**/libQGSdk.a"
  end

  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"
end
