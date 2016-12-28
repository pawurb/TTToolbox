Pod::Spec.new do |s|
  s.name         = "TTToolbox"
  s.version      = "0.0.1"
  s.summary      = "A bunch of utility methods and extensions for Swift"
  s.description  = <<-DESC
A bunch of utility methods and extensions for Swift. More or less a stuff I miss from Ruby when working with Swift.
                   DESC

  s.homepage     = "https://github.com/pawurb/TTToolbox"
  s.license      = "MIT"
  s.author             = { "pawurb" => "p.urbanek89@gmail.com" }
  s.social_media_url   = "http://twitter.com/pawurb"
  s.source       = { :git => "https://github.com/pawurb/TTToolbox.git", :tag => "#{s.version}" }
  s.source_files  = "TTToolbox/*.swift", "TTToolbox/**/*.swift"
end
