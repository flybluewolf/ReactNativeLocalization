Pod::Spec.new do |s|
  s.name             = "ReactNativeLocalization"
  s.version          = "0.1.4"
  s.summary          = "Class to localize the ReactNative interface"
  s.description      = <<-DESC
                       I just needed a dead simple way to internationalize my first React Native app.

At the beginning I thought I'd expose the native iOS internationalization API (NSLocalizedString macro) to Native Script, but then I've opted for a solution that seems, at least to me, more in the spirit of React (and I hope better performance wise).

In this implementation we can keep the localized strings in the same file of the React View in a similar way of how Styles are implemented (I don't deny that this approach could lead to some duplications in the translated strings, but it could be feasable to create a commonjs module to use as common source of the strings, requiring it in the different views).
                       DESC
  s.homepage         = "https://github.com/flybluewolf/ReactNativeLocalization.git"
  s.license          = 'MIT'
  s.author           = { "Stefano Falda" => "" }
  s.source           = { :git => "https://github.com/flybluewolf/ReactNativeLocalization.git", :tag => "v#{s.version}" }
  s.social_media_url = 'http://www.babisoft.com'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'ReactLocalization.*{h,m}'
end
