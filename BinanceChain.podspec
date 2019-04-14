Pod::Spec.new do |s|
  s.name         = 'BinanceChain'
  s.version      = '1.0.0-beta'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.summary      = 'BinanceChain'
  s.author       = { 'Michael Henderson' => 'roadkillrabbit@gmail.com' }
  s.homepage     = 'http://github.com/mh7821/SwiftBinanceChain/'
  s.osx.deployment_target = '10.11'
  s.ios.deployment_target = '11.0'
  s.tvos.deployment_target = '11.0'
  s.watchos.deployment_target = '2.0'
  s.requires_arc = true
  s.source       = { :path => 'BinanceChain' }
  s.pod_target_xcconfig = {
    'OTHER_SWIFT_FLAGS[config=Debug]' => '-D DEBUG'
  }
  s.swift_version = '5'
  s.default_subspecs = 'Core'
  s.static_framework = true

  s.subspec 'Core' do |sub|
    sub.source_files = 'BinanceChain/Sources/Core/*.swift'
    sub.dependency 'BinanceChain/Protobuf'
    sub.dependency 'BinanceChain/Util'
    sub.dependency 'BinanceChain/Bech32'
    sub.dependency 'BinanceChain/OrderedDict'
    sub.dependency 'Alamofire', '~> 4.8'
    sub.dependency 'SwiftyJSON', '~> 4.3'
    sub.dependency 'SwiftProtobuf', '~> 1.4'
    sub.dependency 'Starscream', '~> 3.1'
    sub.dependency 'XCGLogger', '~> 7.0'
    sub.dependency 'SwiftDate', '~> 6.0.1'
    sub.dependency 'HDWalletKit', '~> 0.2.7'
  end

  s.subspec 'Util' do |sub|
    sub.source_files = 'BinanceChain/Sources/Util/*.swift'
  end

  s.subspec 'Protobuf' do |sub|
    sub.source_files = 'BinanceChain/Sources/Protobuf/*.swift'
  end

  s.subspec 'Test' do |sub|
    sub.source_files = 'BinanceChain/Sources/Test/*.swift'
  end

  s.subspec 'Bech32' do |sub|
    sub.source_files = 'BinanceChain/Sources/Bech32/*.swift'
  end

  s.subspec 'OrderedDict' do |sub|
    sub.source_files = 'BinanceChain/Sources/OrderedDict/*.swift'
  end

end
