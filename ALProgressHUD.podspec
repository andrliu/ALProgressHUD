Pod::Spec.new do |s|
    s.name             = 'ALProgressHUD'
    s.version          = '0.1.0'
    s.summary          = 'The most fancy ProgressHUD.'

    s.description      = <<-DESC
ALProgressHUD added an overlay alert view on your viewcontroller.
                     DESC

    s.homepage         = 'https://github.com/andrliu/ALProgressHUD.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Andrew Liu' => 'dieseliu321@gmail.com' }
    s.source           = { :git => 'https://github.com/andrliu/ALProgressHUD.git', :tag => s.version.to_s }

    s.ios.deployment_target = '9.2'
    s.source_files = 'ALProgressHUD/ALProgressHUD.h'
    s.source_files = 'ALProgressHUD/ALProgressHUD.m'

end
