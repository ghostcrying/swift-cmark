Pod::Spec.new do |s|

  s.name         = "cmark_gfm"
  s.version      = "0.0.5"
  s.summary      = "Swift compatible framework for cmark-gfm"

  s.description  = <<-DESC
                   Swift compatible framework for Github's fork of cmark.
                   DESC

  s.homepage     = "https://github.com/ghostcrying/swift-cmark"
  s.license      = "BSD2"
  s.authors      = { "ghostcrying" => "czios1501@gmail.com" }
  s.source       = { :git => "https://github.com/ghostcrying/swift-cmark.git", :tag => "#{s.version}" }
    
  s.ios.deployment_target = "11.0"
  s.osx.deployment_target = "10.15"
  s.tvos.deployment_target = "9.0"
  s.watchos.deployment_target = "5.0"

  s.source_files = [
    'Sources/*.h',
    'Sources/src/**/*{.c,.h}',
    'Sources/extensions/**/*{.c,.h}',
    'Sources/catomic/**/*{.c,.h}'
  ]
  
  s.preserve_paths = "Sources/**/**/*"
  
  s.public_header_files = "Sources/**/**/*.h"

end
