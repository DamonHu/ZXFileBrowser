Pod::Spec.new do |s|
s.name = 'ZXFileBrowser'
s.swift_version = '5.0'
s.version = '2.0.4'
s.license= { :type => "MIT", :file => "LICENSE" }
s.summary = 'iOS Sandbox file browser, iOS沙盒文件浏览器'
s.homepage = 'https://github.com/DamonHu/ZXFileBrowser'
s.authors = { 'ZXKitCode' => 'dong765@qq.com' }
s.source = { :git => "https://github.com/DamonHu/ZXFileBrowser.git", :tag => s.version}
s.requires_arc = true
s.ios.deployment_target = '11.0'
s.subspec 'core' do |cs|
	cs.resource_bundles = {
      'ZXFileBrowser' => ['pod/assets/**/*']
    }
    cs.source_files = "pod/*.swift", "pod/view/*.swift", "pod/vc/*.swift", "pod/model/*.swift"
    cs.dependency 'ZXKitUtil', '~>4.0'
    cs.dependency 'SnapKit'
    cs.dependency 'HDHUD'
end
s.default_subspecs = "core"
s.documentation_url = 'https://blog.hudongdong.com/ios/1169.html'
end
