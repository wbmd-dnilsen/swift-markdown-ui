Pod::Spec.new do |s|

  s.name         = "MarkdownUI"
  s.version      = "0.0.2"
  s.summary      = "Swift compatible framework for swift-markdown-ui"

  s.description  = <<-DESC
                   Swift compatible framework for Github's fork of swift-markdown-ui.
                   DESC

  s.homepage     = "https://github.com/ghostcrying/swift-markdown-ui"
  s.license      = "BSD2"
  s.author       = { 'ghost' => 'czios1501@gmail.com' }
  s.source       = { :git => "https://github.com/ghostcrying/swift-markdown-ui.git", :tag => "#{s.version}" }
    
  s.ios.deployment_target = "15.0"
  s.osx.deployment_target = "12.00"
  s.tvos.deployment_target = "15.0"
  s.watchos.deployment_target = "8.0"

  s.source_files = "Sources/*.h", "Sources/MarkdownUI/**/*.swift"
  s.public_header_files = "Sources/*.h"
  s.resources = 'Sources/MarkdownUI/*.docc'
  
  s.framework = 'Foundation'
  
  s.dependency 'cmark_gfm'
  
end
