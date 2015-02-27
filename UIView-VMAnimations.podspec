Pod::Spec.new do |s|
  s.name             = "UIView+VMAnimations"
  s.version          = "0.1.0"
  s.summary          = "Lightweight category to add animations to UIView objects."
  s.homepage         = "https://github.com/valeriomazzeo/UIView-VMAnimations"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Valerio Mazzeo" => "valerio.mazzeo@gmail.com" }
  s.source           = { :git => "https://github.com/valeriomazzeo/UIView-VMAnimations.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'UIView-VMAnimations' => ['Pod/Assets/*.png']
  }

  s.frameworks = 'UIKit'
end
